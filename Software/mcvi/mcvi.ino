/*
  MIDI2CV
  Copyright (C) 2017  Larry McGovern

  This program is free software: you can redistribute it and/or modify
  it under the terms of the GNU General Public License as published by
  the Free Software Foundation, either version 3 of the License, or
  (at your option) any later version.

  This program is distributed in the hope that it will be useful,
  but WITHOUT ANY WARRANTY; without even the implied warranty of
  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  GNU General Public License <http://www.gnu.org/licenses/> for more details.
*/

/*
  Version by Rich Holmes:
  * Some reformatting and reordering
  * Add 4 per quarter note clock
  * Listen only to selected channel
  * Ignore CC if not mod wheel

  License: GPL3 as above.
*/
#include <MIDI.h>
#include <SPI.h>

// Note priority is set by pins A0 and A2
// Highest note priority: A0 and A2 high (open)
// Lowest note priority:  A0 low (ground), A2 high (open)
// Last note priority:    A2 low (ground)

#define NP_SEL1 A0  // Note priority is set by pins A0 and A2
#define NP_SEL2 A2

#define GATE  2
#define TRIG  3
#define CLOCK_1PQ 4
#define CLOCK_4PQ 5
#define DAC1  8
#define DAC2  9
#define MIDILED 10

#define CHANNEL 1  // Use only this channel

MIDI_CREATE_DEFAULT_INSTANCE();

void setup()
{
  pinMode(NP_SEL1, INPUT_PULLUP);
  pinMode(NP_SEL2, INPUT_PULLUP);

  pinMode(GATE, OUTPUT);
  pinMode(TRIG, OUTPUT);
  pinMode(CLOCK_1PQ, OUTPUT);
  pinMode(CLOCK_4PQ, OUTPUT);
  pinMode(DAC1, OUTPUT);
  pinMode(DAC2, OUTPUT);
  pinMode(MIDILED, OUTPUT);
  digitalWrite(GATE, LOW);
  digitalWrite(TRIG, LOW);
  digitalWrite(CLOCK_1PQ, LOW);
  digitalWrite(CLOCK_4PQ, LOW);
  digitalWrite(DAC1, HIGH);
  digitalWrite(DAC2, HIGH);
  digitalWrite(MIDILED, LOW);

  SPI.begin();

  MIDI.begin(CHANNEL);

  // Set initial pitch bend voltage to 0.5V (mid point).  With Gain = 1X, this is 1023
  // Other DAC outputs will come up as 0V, so don't need to be initialized
  setVoltage(DAC2, 0, 0, 1023);
}

bool notes[88] = {0};
int8_t noteOrder[20] = {0}, orderIndx = {0};
unsigned long trigTimer = 0;

void loop()
{
  int type, noteMsg, velocity, d1, d2;
  static unsigned long clock_timer = 0, clock_timeout = 0;
  static unsigned int clock_count = 0;
  static unsigned long midiled_timer = 0;
  bool S1, S2;

  if ((midiled_timer > 0) && (millis() - midiled_timer > 20))
    {
      digitalWrite(MIDILED, LOW); // Set MIDI LED low after 20 msec
      midiled_timer = 0;
    }
    
  if ((trigTimer > 0) && (millis() - trigTimer > 20))
    {
      digitalWrite(TRIG, LOW); // Set trigger low after 20 msec
      trigTimer = 0;
    }

  if ((clock_timer > 0) && (millis() - clock_timer > 20))
    {
      digitalWrite(CLOCK_1PQ, LOW); // Set clock pulse low after 20 msec
      digitalWrite(CLOCK_4PQ, LOW); // Set clock pulse low after 20 msec
      clock_timer = 0;
    }

  if (MIDI.read())
    {
      digitalWrite(MIDILED, HIGH);
      midiled_timer = millis();
      byte type = MIDI.getType();
      switch (type)
	{
	case midi::ActiveSensing:
	  break;

	case midi::Clock:
	  if (millis() > clock_timeout + 300) clock_count = 0; // Prevents Clock from starting in between quarter notes after clock is restarted!
	  clock_timeout = millis();

	  // MIDI timing clock sends 24 pulses per quarter note.
	  // Sent CLOCK_1PQ pulse only once every 24 pulses
	  // Sent CLOCK_4PQ pulse only once every 6 pulses
	  
	  if (clock_count == 0)
	    digitalWrite(CLOCK_1PQ, HIGH); // Start CLOCK_1PQ pulse
	  if (clock_count == 0 || clock_count == 6
	      || clock_count == 12 || clock_count == 18)
	    {
	      digitalWrite(CLOCK_4PQ, HIGH); // Start CLOCK_4PQ pulse
	      clock_timer = millis();
	    }
	  clock_count++;
	  if (clock_count == 24)
	    clock_count = 0;
	  break;

	case midi::NoteOn:
	case midi::NoteOff:
	  noteMsg = MIDI.getData1() - 21; // A0 = 21, Top Note = 108
	  if ((noteMsg < 0) || (noteMsg > 87)) 
	    break; // Only 88 notes of keyboard are supported

	  if (type == midi::NoteOn) 
	    velocity = MIDI.getData2();
	  else 
	    velocity  = 0;

	  if (velocity == 0)
	    notes[noteMsg] = false;
	  else
	    {
	      notes[noteMsg] = true;
	      // velocity range from 0 to 4095 mV. Left shift d2 by 5
	      // to scale from 0 to 4095, and choose gain = 2X
	      setVoltage(DAC1, 1, 1, velocity << 5); // DAC1, channel 1, gain = 2X
	    }

	  // Pins NP_SEL1 and NP_SEL2 indictate note priority
	  S1 = digitalRead(NP_SEL1);
	  S2 = digitalRead(NP_SEL2);
	  if (S1 && !S2)
	    commandTopNote(); // Highest note priority
	  else if (!S1 && S2)
	    commandBottomNote(); // Lowest note priority
	  else
	    {
	      // Last note priority
	      if (notes[noteMsg])
		{
		  // If note is on and using last note priority, add
		  // to ordered list
		  orderIndx = (orderIndx + 1) % 20;
		  noteOrder[orderIndx] = noteMsg;
		}
	      commandLastNote();
	    }
	  break;

	case midi::PitchBend:
	  // Pitch bend output from 0 to 1023 mV.  Left shift d2 by 4
	  // to scale from 0 to 2047.  With DAC gain = 1X, this will
	  // yield a range from 0 to 1023 mV.
	  d2 = MIDI.getData2(); // d2 from 0 to 127, mid point = 64
	  setVoltage(DAC2, 0, 0, d2 << 4); // DAC2, channel 0, gain = 1X
	  break;

	case midi::ControlChange:
	  d1 = MIDI.getData1();
	  if (d1 != 1) // CC 1 (mod wheel) only
	    break;
	  
	  // CC range from 0 to 4095 mV Left shift d2 by 5 to scale
	  // from 0 to 4095, and choose gain = 2X
	  d2 = MIDI.getData2(); // From 0 to 127
	  setVoltage(DAC2, 1, 1, d2 << 5); // DAC2, channel 1, gain = 2X
	  break;

	default:
	  break;
	}
    }
}

void commandTopNote()
{
  int topNote = 0;
  bool noteActive = false;

  for (int i = 0; i < 88; i++)
    {
      if (notes[i])
	{
	  topNote = i;
	  noteActive = true;
	}
    }

  if (noteActive)
    commandNote(topNote);
  else // All notes are off, turn off gate
    digitalWrite(GATE, LOW);
}

void commandBottomNote()
{
  int bottomNote = 0;
  bool noteActive = false;

  for (int i = 87; i >= 0; i--)
    {
      if (notes[i])
	{
	  bottomNote = i;
	  noteActive = true;
	}
    }

  if (noteActive)
    commandNote(bottomNote);
  else // All notes are off, turn off gate
    digitalWrite(GATE, LOW);
}

void commandLastNote()
{

  int8_t noteIndx;

  for (int i = 0; i < 20; i++)
    {
      noteIndx = noteOrder[mod(orderIndx - i, 20)];
      if (notes[noteIndx])
	{
	  commandNote(noteIndx);
	  return;
	}
    }
  digitalWrite(GATE, LOW); // All notes are off
}

// Rescale 88 notes to 4096 mV:
//    noteMsg = 0 -> 0 mV
//    noteMsg = 87 -> 4096 mV

// DAC output will be (4095/87) = 47.069 mV per note, and 564.9655 mV
// per octave. Note that DAC output will need to be amplified by 1.77X
// for the standard 1V/octave.

#define NOTE_SF 47.069f // This value can be tuned if CV output isn't exactly 1V/octave

void commandNote(int noteMsg)
{
  digitalWrite(GATE, HIGH);
  digitalWrite(TRIG, HIGH);
  trigTimer = millis();

  unsigned int mV = (unsigned int) ((float) noteMsg * NOTE_SF + 0.5);
  setVoltage(DAC1, 0, 1, mV);  // DAC1, channel 0, gain = 2X
}

// setVoltage -- Set DAC voltage output

// dacpin: chip select pin for DAC.  Note and velocity on DAC1, pitch
// bend and CC on DAC2
//
// channel: 0 (A) or 1 (B).  Note and pitch bend on 0, velocity and CC on 2.
//
// gain: 0 = 1X, 1 = 2X.
//
// mV: integer 0 to 4095.  If gain is 1X, mV is in units of half mV
// (i.e., 0 to 2048 mV).
//
// If gain is 2X, mV is in units of mV.

void setVoltage(int dacpin, bool channel, bool gain, unsigned int mV)
{
  unsigned int command = channel ? 0x9000 : 0x1000;

  if (mV > 4095)
    mV = 4095;
  
  command |= gain ? 0x0000 : 0x2000;
  command |= mV;

  SPI.beginTransaction(SPISettings(8000000, MSBFIRST, SPI_MODE0));
  digitalWrite(dacpin, LOW);
  SPI.transfer(command >> 8);
  SPI.transfer(command & 0xFF);
  digitalWrite(dacpin, HIGH);
  SPI.endTransaction();
}

int mod(int a, int b)
{
  int r = a % b;
  return r < 0 ? r + b : r;
}
