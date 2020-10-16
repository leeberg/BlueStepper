#Kraftwerk - The Robots
$Name = "The Robots"
$BPM = 115
$TotalStepsToPlay = 96

$IntroDrumSteps = @{ }
$IntroDrumSteps.Add(1, (New-BSStep -MusicNote "Kick"))
$IntroDrumSteps.Add(2, (""))
$IntroDrumSteps.Add(3, (""))
$IntroDrumSteps.Add(4, (""))

$DrumSteps = @{ }
$DrumSteps.Add(1, (New-BSStep -MusicNote "Kick"))
$DrumSteps.Add(2, (""))
$DrumSteps.Add(3, (""))
$DrumSteps.Add(4, (""))
#################################
$DrumSteps.Add(5, ((New-BSStep -MusicNote "Kick"),(New-BSStep -MusicNote "Snare"),(New-BSStep -MusicNote "FMDrum")))
$DrumSteps.Add(6, (""))
$DrumSteps.Add(7, (""))
$DrumSteps.Add(8, (""))
#################################
$DrumSteps.Add(9, (New-BSStep -MusicNote "Kick"))
$DrumSteps.Add(10, (""))
$DrumSteps.Add(11, (New-BSStep -MusicNote "Kick"))
$DrumSteps.Add(12, (""))
#################################
$DrumSteps.Add(13, ((New-BSStep -MusicNote "Kick"),(New-BSStep -MusicNote "Snare"),(New-BSStep -MusicNote "FMDrum")))
$DrumSteps.Add(14, (""))
$DrumSteps.Add(15, (""))
$DrumSteps.Add(16, (""))

[hashtable]$BassSteps = @{ }
$BassSteps.Add(1, (New-BSStep -MusicNote "D4" -Velocity 100))
$BassSteps.Add(2, (""))
$BassSteps.Add(3, (New-BSStep -MusicNote "C4" -Velocity 100))
$BassSteps.Add(4, (""))
#################################
$BassSteps.Add(5, (New-BSStep -MusicNote "D4" -Velocity 100))
$BassSteps.Add(6, (""))
$BassSteps.Add(7, (New-BSStep -MusicNote "C4" -Velocity 100))
$BassSteps.Add(8, (""))
#################################
$BassSteps.Add(9, (New-BSStep -MusicNote "D4" -Velocity 100))
$BassSteps.Add(10, (New-BSStep -MusicNote "D4" -Velocity 100))
$BassSteps.Add(11, (""))
$BassSteps.Add(12, (""))
#################################
$BassSteps.Add(13, (New-BSStep -MusicNote "F4" -Velocity 100))
$BassSteps.Add(14, (New-BSStep -MusicNote "F4" -Velocity 100))
$BassSteps.Add(15, (""))
$BassSteps.Add(16, (""))
#################################
$BassSteps.Add(17, (New-BSStep -MusicNote "D4" -Velocity 100))
$BassSteps.Add(18, (""))
$BassSteps.Add(19, (New-BSStep -MusicNote "C4" -Velocity 100))
$BassSteps.Add(20, (""))
#################################
$BassSteps.Add(21, (New-BSStep -MusicNote "D4" -Velocity 100))
$BassSteps.Add(22, (""))
$BassSteps.Add(23, (New-BSStep -MusicNote "C4" -Velocity 100))
$BassSteps.Add(24, (""))
#################################
$BassSteps.Add(25, (New-BSStep -MusicNote "D4" -Velocity 100))
$BassSteps.Add(26, (""))
$BassSteps.Add(27, (New-BSStep -MusicNote "D3" -Velocity 100))
$BassSteps.Add(28, (New-BSStep -MusicNote "D3" -Velocity 100))
#################################
$BassSteps.Add(29, (New-BSStep -MusicNote "D3" -Velocity 100))
$BassSteps.Add(30, (New-BSStep -MusicNote "D3" -Velocity 100))
$BassSteps.Add(31, (""))
$BassSteps.Add(32, (""))
#################################


####### PATTERNS
$DrumIntroPattern = New-BSPattern -Name "Intro Drums" -Instrument "Drum" -Notes $IntroDrumSteps
$MainDrumPattern = New-BSPattern -Name "Main Drums" -Instrument "Drum" -Notes $DrumSteps
$BassPattern =  New-BSPattern -Name "Bass Kraft" -Instrument "Bass" -Notes $BassSteps

####### SEQUENCES
$DrumSequence = @(
      (New-BSSequencePattern -FirstStep 1  -LastStep 16 -Pattern $DrumIntroPattern)
      (New-BSSequencePattern -FirstStep 17  -LastStep 384 -Pattern $MainDrumPattern)
)

$BassSequence = @(
    (New-BSSequencePattern -FirstStep 33 -LastStep 384 -Pattern $BassPattern) 
)


$SynthSequence = @(
  
)

New-BSSong -Name $Name -BPM $BPM -TotalStepsToPlay $TotalStepsToPlay -DrumSequence $DrumSequence -BassSequence $BassSequence -SynthSequence $SynthSequence




