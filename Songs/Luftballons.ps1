# New Order - Blue Monday
# PowerShell Sequencing - Lee Berg
$Name = "99 Luftballons"
$BPM = 100
$TotalStepsToPlay = 64


$DrumSteps = @{}
$DrumSteps.Add(1, (New-BSStep -MusicNote "Kick"))
$DrumSteps.Add(2, "")
$DrumSteps.Add(3, "")
$DrumSteps.Add(4, "")
#################################
$DrumSteps.Add(5, ((New-BSStep -MusicNote "Snare"), (New-BSStep -MusicNote "Clap"), (New-BSStep -MusicNote "ClosedHat")))
$DrumSteps.Add(6, "")
$DrumSteps.Add(7, "")
$DrumSteps.Add(8, "")
#################################
$DrumSteps.Add(9, ((New-BSStep -MusicNote "Kick")))
$DrumSteps.Add(10, "")
$DrumSteps.Add(11, "")
$DrumSteps.Add(12, "")
#################################
$DrumSteps.Add(13, ((New-BSStep -MusicNote "Snare"),(New-BSStep -MusicNote "Clap"),(New-BSStep -MusicNote "ClosedHat")))
$DrumSteps.Add(14, "")
$DrumSteps.Add(15, "")
$DrumSteps.Add(16, "")

#################################


$MainBassLine = @{}
$MainBassLine.Add(1, (New-BSStep -MusicNote "D3" -Velocity 100))
$MainBassLine.Add(2, (""))
$MainBassLine.Add(3, (New-BSStep -MusicNote "D3" -Velocity 100))
$MainBassLine.Add(4, (""))
#################################
$MainBassLine.Add(5, (New-BSStep -MusicNote "C3" -Velocity 100))
$MainBassLine.Add(6, (""))
$MainBassLine.Add(7, (""))
$MainBassLine.Add(8, (New-BSStep -MusicNote "D3" -Velocity 100))
#################################
$MainBassLine.Add(9, (""))
$MainBassLine.Add(10, (""))
$MainBassLine.Add(11, (""))
$MainBassLine.Add(12, (""))
#################################
$MainBassLine.Add(13, (""))
$MainBassLine.Add(14, (""))
$MainBassLine.Add(15, (New-BSStep -MusicNote "C3" -Velocity 500))
$MainBassLine.Add(16, (""))
#################################
$MainBassLine.Add(17, (""))
$MainBassLine.Add(18, (""))
$MainBassLine.Add(19, (""))
$MainBassLine.Add(20, (""))
#################################
$MainBassLine.Add(21, (""))
$MainBassLine.Add(22, (""))
$MainBassLine.Add(23, (""))
$MainBassLine.Add(24, (""))
#################################
$MainBassLine.Add(25, (""))
$MainBassLine.Add(26, (""))
$MainBassLine.Add(27, (""))
$MainBassLine.Add(28, (""))
#################################
$MainBassLine.Add(29, (""))
$MainBassLine.Add(30, (""))
$MainBassLine.Add(31, (""))
$MainBassLine.Add(32, (""))
#################################
$MainBassLine.Add(33, (New-BSStep -MusicNote "D3" -Velocity 100))
$MainBassLine.Add(34, (""))
$MainBassLine.Add(35, (""))
$MainBassLine.Add(36, (""))
#################################
$MainBassLine.Add(37, (New-BSStep -MusicNote "D3" -Velocity 100))
$MainBassLine.Add(38, (""))
$MainBassLine.Add(39, (New-BSStep -MusicNote "C3" -Velocity 100))
$MainBassLine.Add(40, (""))
#################################
$MainBassLine.Add(41, (""))
$MainBassLine.Add(42, (""))
$MainBassLine.Add(43,(New-BSStep -MusicNote "D3" -Velocity 100))
$MainBassLine.Add(44, (""))
#################################
$MainBassLine.Add(45, (""))
$MainBassLine.Add(46, (""))
$MainBassLine.Add(47, (New-BSStep -MusicNote "C3" -Velocity 100 -NoteLength 100))
$MainBassLine.Add(48, (""))
#################################
$MainBassLine.Add(49, (""))
$MainBassLine.Add(50, (""))
$MainBassLine.Add(51, (""))
$MainBassLine.Add(52, (""))
#################################
$MainBassLine.Add(53, (""))
$MainBassLine.Add(54, (""))
$MainBassLine.Add(55, (""))
$MainBassLine.Add(56, (""))
#################################
$MainBassLine.Add(57, (""))
$MainBassLine.Add(58, (""))
$MainBassLine.Add(59, (""))
$MainBassLine.Add(60, (""))
#################################
$MainBassLine.Add(61, (""))
$MainBassLine.Add(62, (""))
$MainBassLine.Add(63, (""))
$MainBassLine.Add(64, (""))
#>


$MainDrums = New-BSPattern -Name "BlueDrums" -Instrument "Drum" -Notes $DrumSteps

$BassPattern1 = New-BSPattern -Name "BlueBass" -Instrument "Bass" -Notes $MainBassLine


$DrumSequence = @(
         
    #Intro
    (New-BSSequencePattern -FirstStep 1   -LastStep 320 -Pattern $MainDrums)
)

$BassSequence = @(
    #Intro
    (New-BSSequencePattern -FirstStep 17 -LastStep 320 -Pattern $BassPattern1)
 

)

$SynthSequence = @(
        
)

New-BSSong -Name $Name -BPM $BPM -TotalStepsToPlay $TotalStepsToPlay -DrumSequence $DrumSequence -BassSequence $BassSequence -SynthSequence $SynthSequence