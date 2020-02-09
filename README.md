# 💙🥁🎹🎶 BlueStepper 🎶🎹🥁💙
PowerShell BPM Based MIDI Step Sequencer for Windows 10

![](./img/bluestepper.png)

# "80's as code"

BlueStepper is a very simple PowerShell based 16th note [Step Sequencer](https://en.wikipedia.org/wiki/Music_sequencer) which allows for definition of the note sequence and tempo through PowerShell in order to sequence external Midi devices

Each "Step" is simply an element in a PowerShell [Hasthtable](https://docs.microsoft.com/en-us/dotnet/api/system.collections.hashtable?view=netframework-4.8) that is populated with strings indicating which Note should be played, at which velocity, and for how long.

![](./img/drumsteps.png)


This module uses [Psychlist1972's PowerShell MIDI Module](https://github.com/Psychlist1972/Windows-10-PowerShell-MIDI) for all MIDI Operations which uses the [multi-client MIDI API for Windows 10](https://blogs.windows.com/windowsdeveloper/2016/09/21/midi-enhancements-in-windows-10/). Therefore BlueStepper is **only compatible with Windows 10**.

In **Play mode**, the hashtable patterns are iterated through in time to the set [BPM](https://en.wikipedia.org/wiki/Tempo) of the sequencer, playing the notes defined in the patterns. The time it takes PowerShell to trigger each note during step playback is measured and subtracted from the total step time to attempt to keep timing.

Typically it takes less than 1ms to perform a note operation but with sequncing average time is about 5ms, this leaves over a 100ms idle wait time in a 120BPM 16th step. Complex Steps may take up to 25ms. Overall the timekeeping is certainly not professional grade but to the novice ear it's not really noticeable!

The main use case for BlueStepper is to use it with a USB Midi Interface to send notes to Drum Machines, Synthesizers, or any other device with a MIDI input.

It's very simple and quite "PowerShell'ey" - This was never meant to be the "BE ALL END ALL" step sequencer, but it can do some pretty cool things and sounds pretty good! *80's as code*🎹

# Features
* Simple and very PowerShell friendly - make some cool beats and learn PowerShell at the same time!
* Program 3 different instruments patterns with "infinite" number of steps in a pattern
* Select Indivdual Patterns to play or Sequence a variety of patterns into "Songs"
* Adjustable BPM
* Helper Functions to make writing music sequences easy:
    * Translation of Note to MIDI note number
    * Easy setup / and helpers for Synthesizers, Drum Machines
* "Pretty Good" time keeping... for PowerShell anyways 😊
* Debug Output! 

# Todo 
* Better Performance - Especially for Stop-Notes
* Arpeggiator

# Demos
Here are some classics with some parts that have been sequenced from scratch using BlueStepper and played on real synthesizers

* [EDM Examples](https://twitter.com/LeeAlanBerg/status/1225648709033005056)
* [New Order - Blue Monday](https://twitter.com/LeeAlanBerg/status/1226074288538685440)
* [Kraftwerk - We are the Robots](https://twitter.com/LeeAlanBerg/status/1226281609156059137)
* [The Human League - Don't You Want Me](https://twitter.com/LeeAlanBerg/status/1226318499867480064)
* Cyndi Lauper - She Bop
* Dead or Alive - You Spin me right Round
* Rick Astley - Never Gonna Give You Up
* Tears For Fears - Shout
* Depeche Mode - Just Can't Get Enough
* Depeche Mode - Never Let Me Down Again
* Madonna - Papa don't Preach

# Usage

## Playing a Demo Song
```powershell
#Demo Song Play.ps1

# Import Modules
Import-Module "PeteBrown.PowerShellMidi" -Force
Import-Module "BlueStepper" -Force

# Setup Outputs
Set-BSDrumOutput -DeviceID "\\?\SWD#MMDEVAPI#MIDII_62E8D3FD.P_0000#{6dc23320-ab33-4ce4-80d4-bbb3ebbf2814}" -MidiChannel 9
Set-BSBassOutput -DeviceID "\\?\SWD#MMDEVAPI#MIDII_62E8D3FD.P_0001#{6dc23320-ab33-4ce4-80d4-bbb3ebbf2814}" -MidiChannel 0

# Select Song
$MySong = .\Songs\KraftWerk-Robots.ps1

# Let's Play
Invoke-BSPlayBack -Song $MySong

```

## Creating a Pattern

```powershell
[hashtable]$DrumSteps = @{ }
$DrumSteps.Add(1, ("Kick"))
$DrumSteps.Add(2, (""))
$DrumSteps.Add(3, (""))
$DrumSteps.Add(4, (""))
#################################
$DrumSteps.Add(5, ("Kick","Snare"))
$DrumSteps.Add(6, (""))
$DrumSteps.Add(7, (""))
$DrumSteps.Add(8, (""))
#################################
$DrumSteps.Add(9, ("Kick"))
$DrumSteps.Add(10, (""))
$DrumSteps.Add(11, ("Kick"))
$DrumSteps.Add(12, (""))
#################################
$DrumSteps.Add(13, ("Kick", "Snare"))
$DrumSteps.Add(14, (""))
$DrumSteps.Add(15, (""))
$DrumSteps.Add(16, (""))

$MyDrumPattern = [PSCustomObject]@{
    Name = "My Hello World Drum Pattern"
    Type = "drum"
    Pattern = $DrumSteps 
}

```

## Playing a Pattern

```powershell
Set-BSTiming -BPM 120
Invoke-BSPlayBack -DrumPattern $MyDrumPattern
```

## Sequencing Patterns into a "Song"
```powershell
[hashtable]$IntroDrumSteps = @{ }
$IntroDrumSteps.Add(1, ("Kick"))
$IntroDrumSteps.Add(2, (""))
$IntroDrumSteps.Add(3, (""))
$IntroDrumSteps.Add(4, (""))

[hashtable]$MainDrumSteps = @{ }
$MainDrumSteps.Add(1, ("Kick"))
$MainDrumSteps.Add(2, (""))
$MainDrumSteps.Add(3, (""))
$MainDrumSteps.Add(4, (""))
$MainDrumSteps.Add(5, ("Snare"))
$MainDrumSteps.Add(6, (""))
$MainDrumSteps.Add(7, (""))
$MainDrumSteps.Add(8, (""))

$DrumSequence1 = [PSCustomObject]@{
    Name = "Hello Intro Drums"
    Type = "drum"
    Pattern = $IntroDrumSteps 
}

$DrumSequence2 = [PSCustomObject]@{
    Name = "Hello Main Drums"
    Type = "drum"
    Pattern = $MainDrumSteps
}

[hashtable]$SongPatternSequence = @{ }
$SongPatternSequence.Add(1, ($DrumSequence1))
$SongPatternSequence.Add(17, ($DrumSequence2,$BassSequence1))

# DrumSequence 1 will start to play on Step 1
# DrumSequence 2 will start to play on Step 2 (replacing DrumSequence 1)

``


# Download
Source, Release, Docs "Soon"

# Thanks

* [Psychlist1972](https://github.com/Psychlist1972) - Created the Midi Module which made this all possible.
* [JakobGSvendsen](https://github.com/JakobGSvendsen) - Created PSDJ which gave me a quick start and gave me the idea for this project.
