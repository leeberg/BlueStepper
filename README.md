# BlueStepper 🎶🎹🥁💙
PowerShell BPM Based Step Sequencer for Windows 10 - that is in its super early non-documented release and probably really buggy release!

![](./img/bluestepper.png)

# "80's as code"

BlueStepper is a simple PowerShell based 16th note [Step Sequencer](https://en.wikipedia.org/wiki/Music_sequencer) which allows for definition of the note sequence and tempo through PowerShell to sequence external Midi devices

**Demo Video**:

[![DemoVideo](https://img.youtube.com/vi/hf5Uzw1xWl0/0.jpg)](https://www.youtube.com/watch?v=hf5Uzw1xWl0)

Each "Step" is simply an "Step" PSObject  in a PowerShell [Hasthtable](https://docs.microsoft.com/en-us/dotnet/api/system.collections.hashtable?view=netframework-4.8) that is populated with the Musical Note or Midi Note Number indicating which Note should be played, at which velocity, and for how long.


**Example Drum Pattern:**

![](./img/drumsteps.png)

**Example Bass Pattern:**
![](./img/basslinesteps.png)


This module uses [Psychlist1972's PowerShell MIDI Module](https://github.com/Psychlist1972/Windows-10-PowerShell-MIDI) for all MIDI Operations, which uses the [multi-client MIDI API for Windows 10](https://blogs.windows.com/windowsdeveloper/2016/09/21/midi-enhancements-in-windows-10/). Therefore BlueStepper is **only compatible with Windows 10**.

This module also uses [MikeCodesDotNET's Multimedia-Timer Wrapper](https://github.com/Psychlist1972/Windows-10-PowerShell-MIDI) for Precise (1ms) Scheduling. This allows Timer Ticks for STEPs based on Song BPM to trigger the appropriate midi actions.

In **Play mode**, the hashtable patterns are iterated through in time to the set [BPM](https://en.wikipedia.org/wiki/Tempo) of the sequencer, playing the notes defined in the patterns. The time it takes PowerShell to trigger each note during step playback is measured and subtracted from the total step time to attempt to keep timing.

Typically it takes less than 1ms to perform a note operation, but with sequencing average time is about 1ms or less to send a Drum and two instrument notes on the same step. This leaves over a 100ms idle wait time in a 120BPM 16th step and sounds alright! Currently random Random SlowDowns in the 5-10ms seem to happen once in awhile. Overall the timekeeping is unquestionably not a professional grade, but serviceable for having fun!

The primary use case for BlueStepper is to use it with a USB Midi Interface to send notes to Drum Machines, Synthesizers, or any other device with a MIDI input.

It's very simple and quite "PowerShell'ey" - This was never meant to be the "BE ALL END ALL" step sequencer, but it can do some pretty cool things and sounds pretty good! *80's as code*🎹

# Features
* Simple and very PowerShell friendly - make some cool beats and learn PowerShell at the same time!
* Program 3 different instruments patterns with "infinite" number of steps in a pattern
* Select Individual  Patterns to play or Sequence a variety of patterns into "Songs"
* Adjustable BPM
* Helper Functions to make writing music sequences easy:
    * Translation of Note to MIDI note number
    * Easy setup / and helpers for Synthesizers, Drum Machines
* "Pretty Good" timekeeping... for PowerShell anyways 😊
* Debug Output!

# Todo 
* Made it ACTUALLY easy for regular people to use - especially with out of box windows 10 midi
* Midi CLock - Even if it's not perfect a slight drifting clock control to control multiple devices could still be useful!
* Arpeggiator
* CHORDS!
  * "Easy Chord" - should just be able to tell a step to play a certain chord..
* More songs

# Demos
Here are some classics with some parts that have been sequenced from scratch using BlueStepper and played on real synthesizers

* [EDM Examples](https://twitter.com/LeeAlanBerg/status/1225648709033005056)
* [New Order - Blue Monday](https://twitter.com/LeeAlanBerg/status/1226074288538685440)
* [Kraftwerk - We are the Robots](https://twitter.com/LeeAlanBerg/status/1226281609156059137)
* [The Human League - Don't You Want Me](https://twitter.com/LeeAlanBerg/status/1226318499867480064)
* [Berlin - Take My Breath Away](https://twitter.com/LeeAlanBerg/status/1226684454015578114)

# Usage


## Playing a Demo Song
```powershell
#Demo Song Play.ps1

# Load Song
$Song1 = .\Songs\Robots.ps1

# Let's Play 
Invoke-BSPlayBack -Song $Song1 


```

## Creating a Drum Pattern

```powershell
[hashtable]$DrumSteps = @{ }
$DrumSteps.Add(1, (New-BSDrumStep -DrumNote "Kick"))
$DrumSteps.Add(2, (""))
$DrumSteps.Add(3, (""))
$DrumSteps.Add(4, (""))
#################################
$DrumSteps.Add(5, ((New-BSDrumStep -DrumNote "Kick"), (New-BSDrumStep -DrumNote "Snare")))
$DrumSteps.Add(6, (""))
$DrumSteps.Add(7, (""))
$DrumSteps.Add(8, (""))
#################################
$DrumSteps.Add(9, (New-BSDrumStep -DrumNote "Kick"))
$DrumSteps.Add(10, (""))
$DrumSteps.Add(11, (New-BSDrumStep -DrumNote "Kick"))
$DrumSteps.Add(12, (""))
#################################
$DrumSteps.Add(13, ((New-BSDrumStep -DrumNote "Kick"), (New-BSDrumStep -DrumNote "Snare")))
$DrumSteps.Add(14, (""))
$DrumSteps.Add(15, (""))
$DrumSteps.Add(16, (""))


$MyDrumPattern = New-BSPattern -Name "MainDrums" -Instrument "Drum" -Notes $DrumSteps


```

## Creating a Bass/Synth Pattern

```powershell
$BassSteps = @{ }
$BassSteps.Add(1, (New-BSStep -MusicNote "D4" -Velocity 12 -NoteLength 25))
$BassSteps.Add(2, (""))
$BassSteps.Add(3, (New-BSStep -MusicNote "C4" -Velocity 25))
$BassSteps.Add(4, (""))
#################################
$BassSteps.Add(5, (New-BSStep -MusicNote "D4" -Velocity 50))
$BassSteps.Add(6, (""))
$BassSteps.Add(7, (New-BSStep -MusicNote "C4" -Velocity 75))
$BassSteps.Add(8, (""))
#################################
$BassSteps.Add(9, (New-BSStep -MusicNote "D4" -Velocity 100))
$BassSteps.Add(10, (New-BSStep -MusicNote "D4" -Velocity 125))
$BassSteps.Add(11, (""))
$BassSteps.Add(12, (""))
#################################
$BassSteps.Add(13, (New-BSStep -MusicNote "F4" -Velocity 100))
$BassSteps.Add(14, (New-BSStep -MusicNote "F4" -Velocity 100))
$BassSteps.Add(15, (""))
$BassSteps.Add(16, (""))

$BassPattern1 = New-BSPattern -Name "IntroBass" -Instrument "Bass" -Notes $BassSteps

```

## Playing a Pattern

```powershell
Set-BSTiming -BPM 120
Invoke-BSPlayBack -DrumPattern $MyDrumPattern
```

## Sequencing Patterns into a "Song"
```powershell
$SongSequence = New-BSSequence -SequencePatterns @{
    # Todo Function for STOP 
    1 = ($DrumIntro)
    17 = ($DrumMain,$BassPattern1)
}

# DrumSequence 1 will start to play on Step 1
# DrumSequence 2 will start to play on Step 17 (replacing DrumSequence 1)
# Bass Pattern 1 will also start to play on Step 17

New-BSSong -Name $Name -BPM $BPM -TotalStepsToPlay $TotalStepsToPlay -Sequence $SongSequence

```

# Download
Source, Release, Docs "Soon"

# Thanks

* [Psychlist1972](https://github.com/Psychlist1972) - Created the Midi Module which made this all possible.
* [MikeCodesDotNET's Multimedia-Timer Wrapper](https://github.com/Psychlist1972/Windows-10-PowerShell-MIDI) - Made the scheduling of note operations actually viable!
* [JakobGSvendsen](https://github.com/JakobGSvendsen) - Created PSDJ Module which gave me a quick start and gave me the idea for this project.
* [AdamDriscoll](https://github.com/AdamDriscoll) - Powershell performance and profiling tips!
