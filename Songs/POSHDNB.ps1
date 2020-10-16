#PoshDNB - Lee Berg
$Name = "PoshDNB"
$BPM = 168
$TotalStepsToPlay = 192

$IntroDrumSteps = @{ }
$IntroDrumSteps.Add(1, (New-BSStep -MusicNote "Kick"))
$IntroDrumSteps.Add(2, (""))
$IntroDrumSteps.Add(3, (""))
$IntroDrumSteps.Add(4, (""))
#################################
$IntroDrumSteps.Add(5, ((New-BSStep -MusicNote "Snare")))
$IntroDrumSteps.Add(6, (""))
$IntroDrumSteps.Add(7, (""))
$IntroDrumSteps.Add(8, (""))
#################################
$IntroDrumSteps.Add(9, (""))
$IntroDrumSteps.Add(10, (""))
$IntroDrumSteps.Add(11, (New-BSStep -MusicNote "Kick"))
$IntroDrumSteps.Add(12, (""))
#################################
$IntroDrumSteps.Add(13, ((New-BSStep -MusicNote "Snare")))
$IntroDrumSteps.Add(14, (""))
$IntroDrumSteps.Add(15, (""))
$IntroDrumSteps.Add(16, (""))


$DrumSteps = @{ }
$DrumSteps.Add(1, ((New-BSStep -MusicNote "Kick"),(New-BSStep -MusicNote "ClosedHat"),(New-BSStep -MusicNote "Cymbal")))
$DrumSteps.Add(2, (""))
$DrumSteps.Add(3, ((New-BSStep -MusicNote "ClosedHat"),(New-BSStep -MusicNote "Cymbal")))
$DrumSteps.Add(4, (""))
#################################
$DrumSteps.Add(5, ((New-BSStep -MusicNote "Snare"),(New-BSStep -MusicNote "ClosedHat"),(New-BSStep -MusicNote "Cymbal")))
$DrumSteps.Add(6, (""))
$DrumSteps.Add(7, ((New-BSStep -MusicNote "ClosedHat"),(New-BSStep -MusicNote "Cymbal")))
$DrumSteps.Add(8, (""))
#################################
$DrumSteps.Add(9, ((New-BSStep -MusicNote "ClosedHat"),(New-BSStep -MusicNote "Cymbal")))
$DrumSteps.Add(10, (""))
$DrumSteps.Add(11, ((New-BSStep -MusicNote "Kick"),(New-BSStep -MusicNote "ClosedHat"),(New-BSStep -MusicNote "Cymbal")))
$DrumSteps.Add(12, (New-BSStep -MusicNote "ClosedHat" -Velocity 60))
#################################
$DrumSteps.Add(13, ((New-BSStep -MusicNote "Snare"),(New-BSStep -MusicNote "ClosedHat"),(New-BSStep -MusicNote "Cymbal")))
$DrumSteps.Add(14, ((New-BSStep -MusicNote "ClosedHat" -Velocity 60)))
$DrumSteps.Add(15, ((New-BSStep -MusicNote "ClosedHat"),(New-BSStep -MusicNote "Cymbal")))
$DrumSteps.Add(16, (""))

$DrumLittleFillSteps= @{}
$DrumLittleFillSteps.Add(1, ((New-BSStep -MusicNote "Kick")))
$DrumLittleFillSteps.Add(2, "")
$DrumLittleFillSteps.Add(3, ((New-BSStep -MusicNote "Kick")))
$DrumLittleFillSteps.Add(4, "")
#################################
$DrumLittleFillSteps.Add(5, ((New-BSStep -MusicNote "Clap"),(New-BSStep -MusicNote "Cymbal")))
$DrumLittleFillSteps.Add(6, (""))
$DrumLittleFillSteps.Add(7, (New-BSStep -MusicNote "Clap"))
$DrumLittleFillSteps.Add(8, (""))
#################################
$DrumLittleFillSteps.Add(9, ((New-BSStep -MusicNote "Kick"),(New-BSStep -MusicNote "Cymbal")))
$DrumLittleFillSteps.Add(10, "")
$DrumLittleFillSteps.Add(11, (New-BSStep -MusicNote "Kick"))
$DrumLittleFillSteps.Add(12, "")
#################################
$DrumLittleFillSteps.Add(13, ((New-BSStep -MusicNote "Clap"),(New-BSStep -MusicNote "Cymbal")))
$DrumLittleFillSteps.Add(14, (New-BSStep -MusicNote "Clap"))
$DrumLittleFillSteps.Add(15, (New-BSStep -MusicNote "Clap"))
$DrumLittleFillSteps.Add(16, (New-BSStep -MusicNote "Clap"))
#################################






[hashtable]$BassSteps = @{ }
$BassSteps.Add(1, (New-BSStep -MusicNote "F3" -Velocity 100  -NoteLength 500))
$BassSteps.Add(2, (""))
$BassSteps.Add(3, (""))
$BassSteps.Add(4, (""))
#################################
$BassSteps.Add(5, (""))
$BassSteps.Add(6, (""))
$BassSteps.Add(7, (""))
$BassSteps.Add(8, (""))
#################################
$BassSteps.Add(9, (New-BSStep -MusicNote "F3" -Velocity 100 -NoteLength 500))
$BassSteps.Add(10, (""))
$BassSteps.Add(11, (""))
$BassSteps.Add(12, (""))
#################################
$BassSteps.Add(13, (""))
$BassSteps.Add(14, (""))
$BassSteps.Add(15, (""))
$BassSteps.Add(16, (""))
#################################
$BassSteps.Add(17, (New-BSStep -MusicNote "E3" -Velocity 100 -NoteLength 250))
$BassSteps.Add(18, (""))
$BassSteps.Add(19, (""))
$BassSteps.Add(20, (""))
#################################
$BassSteps.Add(21, (New-BSStep -MusicNote "D#3" -Velocity 100 -NoteLength 250))
$BassSteps.Add(22, (""))
$BassSteps.Add(23, (""))
$BassSteps.Add(24, (""))
#################################
$BassSteps.Add(25, (New-BSStep -MusicNote "D3" -Velocity 100 -NoteLength 500))
$BassSteps.Add(26, (""))
$BassSteps.Add(27, (""))
$BassSteps.Add(28, (""))
#################################
$BassSteps.Add(29, (""))
$BassSteps.Add(30, (""))
$BassSteps.Add(31, (""))
$BassSteps.Add(32, (""))
#################################


####### PATTERNS
$DrumIntroPattern = New-BSPattern -Name "Intro Drums" -Instrument "Drum" -Notes $IntroDrumSteps
$DrumFillPattern =  New-BSPattern -Name "Drum Fill Pattern" -Instrument "Drum" -Notes $DrumLittleFillSteps
$MainDrumPattern = New-BSPattern -Name "Main Drums" -Instrument "Drum" -Notes $DrumSteps
$BassPattern =  New-BSPattern -Name "Null" -Instrument "Bass" -Notes $BassSteps

####### SEQUENCES
$DrumSequence = @(
      (New-BSSequencePattern -FirstStep 1  -LastStep 32 -Pattern $DrumIntroPattern)
      (New-BSSequencePattern -FirstStep 33  -LastStep 48 -Pattern $DrumFillPattern)
      (New-BSSequencePattern -FirstStep 49  -LastStep 192 -Pattern $MainDrumPattern)
)

$BassSequence = @(
    (New-BSSequencePattern -FirstStep 49 -LastStep 192 -Pattern $BassPattern) 
)


$SynthSequence = @(
  
)

New-BSSong -Name $Name -BPM $BPM -TotalStepsToPlay $TotalStepsToPlay -DrumSequence $DrumSequence -BassSequence $BassSequence -SynthSequence $SynthSequence




