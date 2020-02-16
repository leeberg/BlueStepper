# New Order - Blue Monday
# PowerShell Sequencing - Lee Berg
$Name = "Blue Monday"
$BPM = 132
$TotalStepsToPlay = 660


$DrumSteps = @{}
$DrumSteps.Add(1, (New-BSDrumStep -DrumNote "Kick"))
$DrumSteps.Add(2, "")
$DrumSteps.Add(3, (New-BSDrumStep -DrumNote "OpenHat"))
$DrumSteps.Add(4, (New-BSDrumStep -DrumNote "ClosedHat"))
#################################
$DrumSteps.Add(5, ((New-BSDrumStep -DrumNote "Snare"), (New-BSDrumStep -DrumNote "Clap"))), (New-BSDrumStep -DrumNote "ClosedHat")))
$DrumSteps.Add(6, (""))
$DrumSteps.Add(7, (New-BSDrumStep -DrumNote "OpenHat"))
$DrumSteps.Add(8, (New-BSDrumStep -DrumNote "ClosedHat"))
#################################
$DrumSteps.Add(9, ((New-BSDrumStep -DrumNote "Kick"),(New-BSDrumStep -DrumNote "ClosedHat")))
$DrumSteps.Add(10, (""))
$DrumSteps.Add(11, (New-BSDrumStep -DrumNote "OpenHat"))
$DrumSteps.Add(12, (New-BSDrumStep -DrumNote "ClosedHat"))
#################################
$DrumSteps.Add(13, ((New-BSDrumStep -DrumNote "Snare"),(New-BSDrumStep -DrumNote "Clap"))),(New-BSDrumStep -DrumNote "ClosedHat")))
$DrumSteps.Add(14, (""))
$DrumSteps.Add(15, (New-BSDrumStep -DrumNote "OpenHat"))
$DrumSteps.Add(16, (New-BSDrumStep -DrumNote "ClosedHat"))
#################################
$DrumSteps.Add(17, (New-BSDrumStep -DrumNote "Kick"))
$DrumSteps.Add(18, (""))
$DrumSteps.Add(19, (New-BSDrumStep -DrumNote "OpenHat"))
$DrumSteps.Add(20, (New-BSDrumStep -DrumNote "ClosedHat"))
#################################
$DrumSteps.Add(21, ((New-BSDrumStep -DrumNote "Snare"),(New-BSDrumStep -DrumNote "Clap"),(New-BSDrumStep -DrumNote "ClosedHat")))
$DrumSteps.Add(22, (""))
$DrumSteps.Add(23, (New-BSDrumStep -DrumNote "OpenHat"))
$DrumSteps.Add(24, (New-BSDrumStep -DrumNote "ClosedHat"))
#################################
$DrumSteps.Add(25, ((New-BSDrumStep -DrumNote "Kick"),(New-BSDrumStep -DrumNote "ClosedHat")))
$DrumSteps.Add(26, (""))
$DrumSteps.Add(27, (New-BSDrumStep -DrumNote "OpenHat"))
$DrumSteps.Add(28, (New-BSDrumStep -DrumNote "ClosedHat"))
#################################
$DrumSteps.Add(29, ((New-BSDrumStep -DrumNote "Snare"),(New-BSDrumStep -DrumNote "Clap"),(New-BSDrumStep -DrumNote "ClosedHat")))
$DrumSteps.Add(30, (""))
$DrumSteps.Add(31, (New-BSDrumStep -DrumNote "OpenHat"))
$DrumSteps.Add(32, (New-BSDrumStep -DrumNote "ClosedHat"))



$DrumSteps2= @{}
$DrumSteps2.Add(1, (New-BSDrumStep -DrumNote "Kick"))
$DrumSteps2.Add(2, "")
$DrumSteps2.Add(3, "")
$DrumSteps2.Add(4, "")
#################################
$DrumSteps2.Add(5, (New-BSDrumStep -DrumNote "Kick"))
$DrumSteps2.Add(6, (""))
$DrumSteps2.Add(7, (""))
$DrumSteps2.Add(8, (""))
#################################
$DrumSteps2.Add(9, (New-BSDrumStep -DrumNote "Kick"))
$DrumSteps2.Add(10, (New-BSDrumStep -DrumNote "Kick"))
$DrumSteps2.Add(11, (New-BSDrumStep -DrumNote "Kick"))
$DrumSteps2.Add(12, (New-BSDrumStep -DrumNote "Kick"))
#################################
$DrumSteps2.Add(13, (New-BSDrumStep -DrumNote "Kick"))
$DrumSteps2.Add(14, (New-BSDrumStep -DrumNote "Kick"))
$DrumSteps2.Add(15, (New-BSDrumStep -DrumNote "Kick"))
$DrumSteps2.Add(16, (New-BSDrumStep -DrumNote "Kick"))
#################################
$DrumSteps2.Add(17, (New-BSDrumStep -DrumNote "Kick"))
$DrumSteps2.Add(18, "")
$DrumSteps2.Add(19, "")
$DrumSteps2.Add(20, "")
#################################
$DrumSteps2.Add(21, (New-BSDrumStep -DrumNote "Kick"))
$DrumSteps2.Add(22, (""))
$DrumSteps2.Add(23, (""))
$DrumSteps2.Add(24, (""))
#################################
$DrumSteps2.Add(25,(New-BSDrumStep -DrumNote "Kick"))
$DrumSteps2.Add(26, (""))
$DrumSteps2.Add(27, (""))
$DrumSteps2.Add(28, (""))
#################################
$DrumSteps2.Add(29, (New-BSDrumStep -DrumNote "Kick"))
$DrumSteps2.Add(30, (""))
$DrumSteps2.Add(31, (""))
$DrumSteps2.Add(32, (""))


$DrumSteps3 = @{}
$DrumSteps3.Add(1, ((New-BSDrumStep -DrumNote "Kick"), (New-BSDrumStep -DrumNote "ClosedHat")))
$DrumSteps3.Add(2, "")
$DrumSteps3.Add(3, (New-BSDrumStep -DrumNote "ClosedHat"))
$DrumSteps3.Add(4, (New-BSDrumStep -DrumNote "ClosedHat"))
#################################
$DrumSteps3.Add(5, ((New-BSDrumStep -DrumNote "Kick"), (New-BSDrumStep -DrumNote "ClosedHat"),(New-BSDrumStep -DrumNote "Snare")))
$DrumSteps3.Add(6, (""))
$DrumSteps3.Add(7, ((New-BSDrumStep -DrumNote "ClosedHat")))
$DrumSteps3.Add(8, ((New-BSDrumStep -DrumNote "ClosedHat")))
#################################
$DrumSteps3.Add(9, (New-BSDrumStep -DrumNote "Kick"))
$DrumSteps3.Add(10, (New-BSDrumStep -DrumNote "Kick"))
$DrumSteps3.Add(11, ((New-BSDrumStep -DrumNote "Kick"), (New-BSDrumStep -DrumNote "ClosedHat")))
$DrumSteps3.Add(12, ((New-BSDrumStep -DrumNote "Kick"), (New-BSDrumStep -DrumNote "ClosedHat")))
#################################
$DrumSteps3.Add(13, ((New-BSDrumStep -DrumNote "Kick"), (New-BSDrumStep -DrumNote "ClosedHat"),(New-BSDrumStep -DrumNote "Snare")))
$DrumSteps3.Add(14, (New-BSDrumStep -DrumNote "Kick"))
$DrumSteps3.Add(15, ((New-BSDrumStep -DrumNote "Kick"), (New-BSDrumStep -DrumNote "ClosedHat")))
$DrumSteps3.Add(16, ((New-BSDrumStep -DrumNote "Kick"), (New-BSDrumStep -DrumNote "ClosedHat")))
#################################
$DrumSteps3.Add(17, ((New-BSDrumStep -DrumNote "Kick"), (New-BSDrumStep -DrumNote "ClosedHat")))
$DrumSteps3.Add(18, "")
$DrumSteps3.Add(19, (New-BSDrumStep -DrumNote "ClosedHat"))
$DrumSteps3.Add(20, (New-BSDrumStep -DrumNote "ClosedHat"))
#################################
$DrumSteps3.Add(21, ((New-BSDrumStep -DrumNote "Kick"), (New-BSDrumStep -DrumNote "ClosedHat"),(New-BSDrumStep -DrumNote "Snare")))
$DrumSteps3.Add(22, (""))
$DrumSteps3.Add(23, ((New-BSDrumStep -DrumNote "ClosedHat")))
$DrumSteps3.Add(24, ((New-BSDrumStep -DrumNote "ClosedHat")))
#################################
$DrumSteps3.Add(25, ((New-BSDrumStep -DrumNote "Kick"), (New-BSDrumStep -DrumNote "ClosedHat")))
$DrumSteps3.Add(26, (""))
$DrumSteps3.Add(27, ((New-BSDrumStep -DrumNote "ClosedHat")))
$DrumSteps3.Add(28, ((New-BSDrumStep -DrumNote "ClosedHat")))
#################################
$DrumSteps3.Add(29, ((New-BSDrumStep -DrumNote "Kick"), (New-BSDrumStep -DrumNote "ClosedHat"),(New-BSDrumStep -DrumNote "Snare")))
$DrumSteps3.Add(30, (""))
$DrumSteps3.Add(31, ((New-BSDrumStep -DrumNote "ClosedHat")))
$DrumSteps3.Add(32, ((New-BSDrumStep -DrumNote "ClosedHat")))



$DrumFillSteps1= @{}
$DrumFillSteps1.Add(1, ((New-BSDrumStep -DrumNote "Kick"),(New-BSDrumStep -DrumNote "OpenHat")))
$DrumFillSteps1.Add(2, "")
$DrumFillSteps1.Add(3, "")
$DrumFillSteps1.Add(4, ((New-BSDrumStep -DrumNote "Kick"),(New-BSDrumStep -DrumNote "OpenHat")))
#################################
$DrumFillSteps1.Add(5, (""))
$DrumFillSteps1.Add(6, (""))
$DrumFillSteps1.Add(7, ((New-BSDrumStep -DrumNote "Kick"),(New-BSDrumStep -DrumNote "OpenHat")))
$DrumFillSteps1.Add(8, (""))
#################################
$DrumFillSteps1.Add(9, (""))
$DrumFillSteps1.Add(10, ((New-BSDrumStep -DrumNote "Kick"),(New-BSDrumStep -DrumNote "OpenHat")))
$DrumFillSteps1.Add(11, (""))
$DrumFillSteps1.Add(12, (""))
#################################
$DrumFillSteps1.Add(13, (""))
$DrumFillSteps1.Add(14, (""))
$DrumFillSteps1.Add(15, (""))
$DrumFillSteps1.Add(16, (""))
#################################
$DrumFillSteps1.Add(17, ((New-BSDrumStep -DrumNote "Kick"),(New-BSDrumStep -DrumNote "OpenHat")))
$DrumFillSteps1.Add(18, "")
$DrumFillSteps1.Add(19, "")
$DrumFillSteps1.Add(20, ((New-BSDrumStep -DrumNote "Kick"),(New-BSDrumStep -DrumNote "OpenHat")))
#################################
$DrumFillSteps1.Add(21, (""))
$DrumFillSteps1.Add(22, (""))
$DrumFillSteps1.Add(23, ((New-BSDrumStep -DrumNote "Kick"),(New-BSDrumStep -DrumNote "OpenHat")))
$DrumFillSteps1.Add(24, (""))
#################################
$DrumFillSteps1.Add(25, (""))
$DrumFillSteps1.Add(26, ((New-BSDrumStep -DrumNote "Kick"),(New-BSDrumStep -DrumNote "OpenHat")))
$DrumFillSteps1.Add(27, (""))
$DrumFillSteps1.Add(28, (""))
#################################
$DrumFillSteps1.Add(29, (""))
$DrumFillSteps1.Add(30, (""))
$DrumFillSteps1.Add(31, (""))
$DrumFillSteps1.Add(32, (""))



$DrumLittleFillSteps= @{}
$DrumLittleFillSteps.Add(1, ((New-BSDrumStep -DrumNote "Kick"),(New-BSDrumStep -DrumNote "Clap")))
$DrumLittleFillSteps.Add(2, "")
$DrumLittleFillSteps.Add(3, (New-BSDrumStep -DrumNote "Clap"))
$DrumLittleFillSteps.Add(4, (New-BSDrumStep -DrumNote "Clap"))
#################################
$DrumLittleFillSteps.Add(5, ((New-BSDrumStep -DrumNote "Kick"),(New-BSDrumStep -DrumNote "Clap")))
$DrumLittleFillSteps.Add(6, (""))
$DrumLittleFillSteps.Add(7, (New-BSDrumStep -DrumNote "Clap"))
$DrumLittleFillSteps.Add(8, (New-BSDrumStep -DrumNote "Clap"))
#################################
$DrumLittleFillSteps.Add(9, (New-BSDrumStep -DrumNote "Kick"))
$DrumLittleFillSteps.Add(10, (New-BSDrumStep -DrumNote "Kick"))
$DrumLittleFillSteps.Add(11, (New-BSDrumStep -DrumNote "Kick"))
$DrumLittleFillSteps.Add(12, (New-BSDrumStep -DrumNote "Kick"))
#################################
$DrumLittleFillSteps.Add(13, (New-BSDrumStep -DrumNote "Kick"))
$DrumLittleFillSteps.Add(14, (New-BSDrumStep -DrumNote "Kick"))
$DrumLittleFillSteps.Add(15, (New-BSDrumStep -DrumNote "Kick"))
$DrumLittleFillSteps.Add(16, (New-BSDrumStep -DrumNote "Kick"))
#################################



$IntroBassLine = @{}
$IntroBassLine.Add(1, (New-BSStep -MidiNumber "65" -Velocity 100))
$IntroBassLine.Add(2, (""))
$IntroBassLine.Add(3, (New-BSStep -MidiNumber "65" -Velocity 100))
$IntroBassLine.Add(4, (New-BSStep -MidiNumber "65" -Velocity 100))
#################################
$IntroBassLine.Add(5, (New-BSStep -MidiNumber "65" -Velocity 100))
$IntroBassLine.Add(6, (""))
$IntroBassLine.Add(7, (New-BSStep -MidiNumber "65" -Velocity 100))
$IntroBassLine.Add(8, (New-BSStep -MidiNumber "65" -Velocity 100))
#################################
$IntroBassLine.Add(9, (New-BSStep -MidiNumber "60" -Velocity 100))
$IntroBassLine.Add(10, (""))
$IntroBassLine.Add(11, (New-BSStep -MidiNumber "60" -Velocity 100))
$IntroBassLine.Add(12, (New-BSStep -MidiNumber "60" -Velocity 100))
#################################
$IntroBassLine.Add(13, (New-BSStep -MidiNumber "60" -Velocity 100))
$IntroBassLine.Add(14, (""))
$IntroBassLine.Add(15, (New-BSStep -MidiNumber "60" -Velocity 100))
$IntroBassLine.Add(16, (New-BSStep -MidiNumber "60" -Velocity 100))
#################################
$IntroBassLine.Add(17, (New-BSStep -MidiNumber "62" -Velocity 100))
$IntroBassLine.Add(18, (""))
$IntroBassLine.Add(19, (New-BSStep -MidiNumber "62" -Velocity 100))
$IntroBassLine.Add(20, (New-BSStep -MidiNumber "62" -Velocity 100))
#################################
$IntroBassLine.Add(21, (New-BSStep -MidiNumber "62" -Velocity 100))
$IntroBassLine.Add(22, (""))
$IntroBassLine.Add(23, (New-BSStep -MidiNumber "62" -Velocity 100))
$IntroBassLine.Add(24, (New-BSStep -MidiNumber "62" -Velocity 100))
#################################
$IntroBassLine.Add(25, (New-BSStep -MidiNumber "62" -Velocity 100))
$IntroBassLine.Add(26, (""))
$IntroBassLine.Add(27, (New-BSStep -MidiNumber "62" -Velocity 100))
$IntroBassLine.Add(28, (New-BSStep -MidiNumber "62" -Velocity 100))
#################################
$IntroBassLine.Add(29, (New-BSStep -MidiNumber "62" -Velocity 100))
$IntroBassLine.Add(30, (""))
$IntroBassLine.Add(31, (New-BSStep -MidiNumber "62" -Velocity 100))
$IntroBassLine.Add(32, (New-BSStep -MidiNumber "62" -Velocity 100))
#################################
$IntroBassLine.Add(33, (New-BSStep -MidiNumber "67" -Velocity 100))
$IntroBassLine.Add(34, (""))
$IntroBassLine.Add(35, (New-BSStep -MidiNumber "67" -Velocity 100))
$IntroBassLine.Add(36, (New-BSStep -MidiNumber "67" -Velocity 100))
#################################
$IntroBassLine.Add(37, (New-BSStep -MidiNumber "67" -Velocity 100))
$IntroBassLine.Add(38, (""))
$IntroBassLine.Add(39, (New-BSStep -MidiNumber "67" -Velocity 100))
$IntroBassLine.Add(40, (New-BSStep -MidiNumber "67" -Velocity 100))
#################################
$IntroBassLine.Add(41, (New-BSStep -MidiNumber "60" -Velocity 100))
$IntroBassLine.Add(42, (""))
$IntroBassLine.Add(43, (New-BSStep -MidiNumber "60" -Velocity 100))
$IntroBassLine.Add(44, (New-BSStep -MidiNumber "60" -Velocity 100))
#################################
$IntroBassLine.Add(45, (New-BSStep -MidiNumber "60" -Velocity 100))
$IntroBassLine.Add(46, (""))
$IntroBassLine.Add(47, (New-BSStep -MidiNumber "60" -Velocity 100))
$IntroBassLine.Add(48, (New-BSStep -MidiNumber "60" -Velocity 100))
#################################
$IntroBassLine.Add(49, (New-BSStep -MidiNumber "62" -Velocity 100))
$IntroBassLine.Add(50, (""))
$IntroBassLine.Add(51, (New-BSStep -MidiNumber "62" -Velocity 100))
$IntroBassLine.Add(52, (New-BSStep -MidiNumber "62" -Velocity 100))
#################################
$IntroBassLine.Add(53, (New-BSStep -MidiNumber "62" -Velocity 100))
$IntroBassLine.Add(54, (""))
$IntroBassLine.Add(55, (New-BSStep -MidiNumber "62" -Velocity 100))
$IntroBassLine.Add(56, (New-BSStep -MidiNumber "62" -Velocity 100))
#################################
$IntroBassLine.Add(57, (New-BSStep -MidiNumber "62" -Velocity 100))
$IntroBassLine.Add(58, (""))
$IntroBassLine.Add(59, (New-BSStep -MidiNumber "62" -Velocity 100))
$IntroBassLine.Add(60, (New-BSStep -MidiNumber "62" -Velocity 100))
#################################
$IntroBassLine.Add(61, (New-BSStep -MidiNumber "62" -Velocity 100))
$IntroBassLine.Add(62, (""))
$IntroBassLine.Add(63, (New-BSStep -MidiNumber "62" -Velocity 100))
$IntroBassLine.Add(64, (New-BSStep -MidiNumber "62" -Velocity 100))
#################################


$MainBassLine = @{}
$MainBassLine.Add(1, (New-BSStep -MusicNote "F4" -Velocity 100))
$MainBassLine.Add(2, (""))
$MainBassLine.Add(3, (New-BSStep -MusicNote "F5" -Velocity 100))
$MainBassLine.Add(4, (""))
#################################
$MainBassLine.Add(5, (New-BSStep -MusicNote "F4" -Velocity 100))
$MainBassLine.Add(6, (""))
$MainBassLine.Add(7, (New-BSStep -MusicNote "F5" -Velocity 100))
$MainBassLine.Add(8, (""))
#################################
$MainBassLine.Add(9, (New-BSStep -MusicNote "C4" -Velocity 100))
$MainBassLine.Add(10, (""))
$MainBassLine.Add(11, (New-BSStep -MusicNote "C5" -Velocity 100))
$MainBassLine.Add(12, (""))
#################################
$MainBassLine.Add(13, (New-BSStep -MusicNote "C4" -Velocity 100))
$MainBassLine.Add(14, (""))
$MainBassLine.Add(15, (New-BSStep -MusicNote "C5" -Velocity 100))
$MainBassLine.Add(16, (""))
#################################
$MainBassLine.Add(17, (New-BSStep -MusicNote "D4" -Velocity 100))
$MainBassLine.Add(18, (""))
$MainBassLine.Add(19, (New-BSStep -MusicNote "D5" -Velocity 100))
$MainBassLine.Add(20, (""))
#################################
$MainBassLine.Add(21, (New-BSStep -MusicNote "D4" -Velocity 100))
$MainBassLine.Add(22, (""))
$MainBassLine.Add(23, (New-BSStep -MusicNote "D5" -Velocity 100))
$MainBassLine.Add(24, (""))
#################################
$MainBassLine.Add(25, (New-BSStep -MusicNote "D4" -Velocity 100))
$MainBassLine.Add(26, (""))
$MainBassLine.Add(27, (New-BSStep -MusicNote "D5" -Velocity 100))
$MainBassLine.Add(28, (""))
#################################
$MainBassLine.Add(29, (New-BSStep -MusicNote "D4" -Velocity 100))
$MainBassLine.Add(30, (""))
$MainBassLine.Add(31, (New-BSStep -MusicNote "D5" -Velocity 100))
$MainBassLine.Add(32, (""))
#################################
$MainBassLine.Add(33, (New-BSStep -MusicNote "G4" -Velocity 100))
$MainBassLine.Add(34, (""))
$MainBassLine.Add(35, (New-BSStep -MusicNote "G5" -Velocity 100))
$MainBassLine.Add(36, (""))
#################################
$MainBassLine.Add(37, (New-BSStep -MusicNote "G4" -Velocity 100))
$MainBassLine.Add(38, (""))
$MainBassLine.Add(39, (New-BSStep -MusicNote "G5" -Velocity 100))
$MainBassLine.Add(40, (""))
#################################
$MainBassLine.Add(41, (New-BSStep -MusicNote "C4" -Velocity 100))
$MainBassLine.Add(42, (""))
$MainBassLine.Add(43,(New-BSStep -MusicNote "C5" -Velocity 100))
$MainBassLine.Add(44, (""))
#################################
$MainBassLine.Add(45, (New-BSStep -MusicNote "C4" -Velocity 100))
$MainBassLine.Add(46, (""))
$MainBassLine.Add(47,(New-BSStep -MusicNote "C5" -Velocity 100))
$MainBassLine.Add(48, (""))
#################################
$MainBassLine.Add(49, (New-BSStep -MusicNote "D4" -Velocity 100))
$MainBassLine.Add(50, (""))
$MainBassLine.Add(51, (New-BSStep -MusicNote "D5" -Velocity 100))
$MainBassLine.Add(52, (""))
#################################
$MainBassLine.Add(53, (New-BSStep -MusicNote "D4" -Velocity 100))
$MainBassLine.Add(54, (""))
$MainBassLine.Add(55, (New-BSStep -MusicNote "D5" -Velocity 100))
$MainBassLine.Add(56, (""))
#################################
$MainBassLine.Add(57, (New-BSStep -MusicNote "D4" -Velocity 100))
$MainBassLine.Add(58, (""))
$MainBassLine.Add(59, (New-BSStep -MusicNote "D5" -Velocity 100))
$MainBassLine.Add(60, (""))
#################################
$MainBassLine.Add(61, (New-BSStep -MusicNote "D4" -Velocity 100))
$MainBassLine.Add(62, (""))
$MainBassLine.Add(63, (New-BSStep -MusicNote "D5" -Velocity 100))
$MainBassLine.Add(64, (""))
#>



# Dinky Synth
$SynthSteps = @{}
$SynthSteps.Add(1, (New-BSStep -MidiNumber "77" -Velocity 100 -NoteLength 100))
$SynthSteps.Add(2, (New-BSStep -MidiNumber "77" -Velocity 100 -NoteLength 100))
$SynthSteps.Add(3, (New-BSStep -MidiNumber "77" -Velocity 100 -NoteLength 100))
$SynthSteps.Add(4, (""))
############################
$SynthSteps.Add(5, (New-BSStep -MidiNumber "77" -Velocity 100 -NoteLength 100))
$SynthSteps.Add(6, (""))
$SynthSteps.Add(7, (New-BSStep -MidiNumber "79" -Velocity 100 -NoteLength 100))
$SynthSteps.Add(8, (New-BSStep -MidiNumber "79" -Velocity 100 -NoteLength 100))
############################
$SynthSteps.Add(9, (New-BSStep -MidiNumber "72" -Velocity 100 -NoteLength 100))
$SynthSteps.Add(10, (""))
$SynthSteps.Add(11, (New-BSStep -MidiNumber "72" -Velocity 100 -NoteLength 100))
$SynthSteps.Add(12, (""))
############################
$SynthSteps.Add(13, (New-BSStep -MidiNumber "74" -Velocity 100 -NoteLength 100))
$SynthSteps.Add(14, (New-BSStep -MidiNumber "74" -Velocity 100 -NoteLength 100))
$SynthSteps.Add(15, (New-BSStep -MidiNumber "74" -Velocity 100 -NoteLength 100))
$SynthSteps.Add(16, (" "))
############################  
$SynthSteps.Add(17, (New-BSStep -MidiNumber "74" -Velocity 100 -NoteLength 100))
$SynthSteps.Add(18, (" "))
$SynthSteps.Add(19, (New-BSStep -MidiNumber "74" -Velocity 100 -NoteLength 100))
$SynthSteps.Add(20, (New-BSStep -MidiNumber "74" -Velocity 100 -NoteLength 100))
############################
$SynthSteps.Add(21, (New-BSStep -MidiNumber "74" -Velocity 100 -NoteLength 100))
$SynthSteps.Add(22, (""))
$SynthSteps.Add(23, (New-BSStep -MidiNumber "74" -Velocity 100 -NoteLength 100))
$SynthSteps.Add(24, (""))
############################
$SynthSteps.Add(25, (New-BSStep -MidiNumber "74" -Velocity 100 -NoteLength 100))
$SynthSteps.Add(26, (New-BSStep -MidiNumber "74" -Velocity 100 -NoteLength 100))
$SynthSteps.Add(27, (New-BSStep -MidiNumber "74" -Velocity 100 -NoteLength 100))
$SynthSteps.Add(28, (" "))
############################
$SynthSteps.Add(29, (New-BSStep -MidiNumber "74" -Velocity 100 -NoteLength 100))
$SynthSteps.Add(30, (""))
$SynthSteps.Add(31, (New-BSStep -MidiNumber "74" -Velocity 100 -NoteLength 100))
$SynthSteps.Add(32, (New-BSStep -MidiNumber "74" -Velocity 100 -NoteLength 100))
############################
$SynthSteps.Add(33, (New-BSStep -MidiNumber "77" -Velocity 100 -NoteLength 100))
$SynthSteps.Add(34, (""))
$SynthSteps.Add(35, (New-BSStep -MidiNumber "77" -Velocity 100 -NoteLength 100))
$SynthSteps.Add(36, (""))
############################
$SynthSteps.Add(37, (New-BSStep -MidiNumber "77" -Velocity 100 -NoteLength 100))
$SynthSteps.Add(38, (New-BSStep -MidiNumber "79" -Velocity 100 -NoteLength 100))
$SynthSteps.Add(39, (New-BSStep -MidiNumber "79" -Velocity 100 -NoteLength 100))
$SynthSteps.Add(40, (""))
############################
$SynthSteps.Add(41, (New-BSStep -MidiNumber "72" -Velocity 100 -NoteLength 100))
$SynthSteps.Add(42, (""))
$SynthSteps.Add(43, (New-BSStep -MidiNumber "72" -Velocity 100 -NoteLength 100))
$SynthSteps.Add(44, (New-BSStep -MidiNumber "72" -Velocity 100 -NoteLength 100))
############################
$SynthSteps.Add(45, (New-BSStep -MidiNumber "72" -Velocity 100 -NoteLength 100))
$SynthSteps.Add(46, (" "))
$SynthSteps.Add(47, (New-BSStep -MidiNumber "74" -Velocity 100 -NoteLength 100))
$SynthSteps.Add(48, (" "))
############################  
$SynthSteps.Add(49, (New-BSStep -MidiNumber "74" -Velocity 100 -NoteLength 100))
$SynthSteps.Add(50, (New-BSStep -MidiNumber "74" -Velocity 100 -NoteLength 100))
$SynthSteps.Add(51, (New-BSStep -MidiNumber "74" -Velocity 100 -NoteLength 100))
$SynthSteps.Add(52, (" "))
############################
$SynthSteps.Add(53, (New-BSStep -MidiNumber "74" -Velocity 100 -NoteLength 100))
$SynthSteps.Add(54, (""))
$SynthSteps.Add(55, (New-BSStep -MidiNumber "74" -Velocity 100 -NoteLength 100))
$SynthSteps.Add(56, (New-BSStep -MidiNumber "74" -Velocity 100 -NoteLength 100))
############################
$SynthSteps.Add(57, (New-BSStep -MidiNumber "74" -Velocity 100 -NoteLength 100))
$SynthSteps.Add(58, (" "))
$SynthSteps.Add(59, (New-BSStep -MidiNumber "74" -Velocity 100 -NoteLength 100))
$SynthSteps.Add(60, (" "))
############################
$SynthSteps.Add(61, (New-BSStep -MidiNumber "74" -Velocity 100 -NoteLength 100))
$SynthSteps.Add(62, (New-BSStep -MidiNumber "74" -Velocity 100 -NoteLength 100))
$SynthSteps.Add(63, (New-BSStep -MidiNumber "74" -Velocity 100 -NoteLength 100))
$SynthSteps.Add(64, (" "))
############################




$Strings = @{}
$Strings.Add(1, (New-BSStep -MidiNumber "80" -Velocity 100 -NoteLength 1000))
$Strings.Add(2, (""))
$Strings.Add(3, (""))
$Strings.Add(4, (""))
############################
$Strings.Add(5, (""))
$Strings.Add(6, (""))
$Strings.Add(7, (""))
$Strings.Add(8, (""))
############################
$Strings.Add(9, (New-BSStep -MidiNumber "83" -Velocity 100 -NoteLength 450))
$Strings.Add(10, (""))
$Strings.Add(11, (""))
$Strings.Add(12, (""))
############################
$Strings.Add(13, (New-BSStep -MidiNumber "81" -Velocity 100 -NoteLength 2500))
$Strings.Add(14, (""))
$Strings.Add(15, (""))
$Strings.Add(16, (""))
############################
$Strings.Add(17, (""))
$Strings.Add(18, (""))
$Strings.Add(19, (""))
$Strings.Add(20, (""))
############################
$Strings.Add(21, (""))
$Strings.Add(22, (""))
$Strings.Add(23, (""))
$Strings.Add(24, (""))
############################
$Strings.Add(25, (""))
$Strings.Add(26, (""))
$Strings.Add(27, (""))
$Strings.Add(28, (""))
############################
$Strings.Add(29, (""))
$Strings.Add(30, (""))
$Strings.Add(31, (""))
$Strings.Add(32, (""))
#######################################################
$Strings.Add(33, (New-BSStep -MidiNumber "84" -Velocity 100 -NoteLength 1000))
$Strings.Add(34, (""))
$Strings.Add(35, (""))
$Strings.Add(36, (""))
############################
$Strings.Add(37, (""))
$Strings.Add(38, (""))
$Strings.Add(39, (""))
$Strings.Add(40, (""))
############################
$Strings.Add(41, (New-BSStep -MidiNumber "83" -Velocity 100 -NoteLength 450))
$Strings.Add(42, (""))
$Strings.Add(43, (""))
$Strings.Add(44, (""))
############################
$Strings.Add(45, (New-BSStep -MidiNumber "81" -Velocity 100 -NoteLength 800))
$Strings.Add(46, (""))
$Strings.Add(47, (""))
$Strings.Add(48, (""))

############################
$Strings.Add(49, (""))
$Strings.Add(50, (""))
$Strings.Add(51, (New-BSStep -MidiNumber "88" -Velocity 100 -NoteLength 1500))
$Strings.Add(52, (""))
############################
$Strings.Add(53, (""))
$Strings.Add(54, (""))
$Strings.Add(55, (""))
$Strings.Add(56, (""))
############################
$Strings.Add(57, (""))
$Strings.Add(58, (""))
$Strings.Add(59, (""))
$Strings.Add(60, (""))
############################
$Strings.Add(61, (""))
$Strings.Add(62, (""))
$Strings.Add(63, (""))
$Strings.Add(64, (""))




$Strings2 = @{}
$Strings2.Add(1, (New-BSStep -MidiNumber "84" -Velocity 80 -NoteLength 1000))
$Strings2.Add(2, ("")) 
$Strings2.Add(3, (""))
$Strings2.Add(4, (""))
############################
$Strings2.Add(5, (""))
$Strings2.Add(6, (""))
$Strings2.Add(7, (""))
$Strings2.Add(8, (""))
############################
$Strings2.Add(9, (""))
$Strings2.Add(10,  (New-BSStep -MidiNumber "81" -Velocity 80 -NoteLength 2000))
$Strings2.Add(11, (""))
$Strings2.Add(12, (""))
############################
$Strings2.Add(13, (""))
$Strings2.Add(14, ("")) 
$Strings2.Add(15, (""))
$Strings2.Add(16, (""))
############################
$Strings2.Add(17, (""))
$Strings2.Add(18, (""))
$Strings2.Add(19, (""))
$Strings2.Add(20, (""))
############################
$Strings2.Add(21, (""))
$Strings2.Add(22, (""))
$Strings2.Add(23, (""))
$Strings2.Add(24, (""))
############################
$Strings2.Add(25, (""))
$Strings2.Add(26, (""))
$Strings2.Add(27, (""))
$Strings2.Add(28, (""))
############################
$Strings2.Add(29, (New-BSStep -MidiNumber "84" -Velocity 80 -NoteLength 1000))
$Strings2.Add(30, (""))
$Strings2.Add(31, (""))
$Strings2.Add(32, (""))
############################
$Strings2.Add(33, (""))
$Strings2.Add(34, (""))
$Strings2.Add(35, (""))
$Strings2.Add(36, (""))
############################
$Strings2.Add(37, (New-BSStep -MidiNumber "83" -Velocity 80 -NoteLength 500))
$Strings2.Add(38, (""))
$Strings2.Add(39, (""))
$Strings2.Add(40, (""))
############################
$Strings2.Add(41, (New-BSStep -MidiNumber "81" -Velocity 80 -NoteLength 800))
$Strings2.Add(42, (""))
$Strings2.Add(43, (""))
$Strings2.Add(44, (""))
############################
$Strings2.Add(45, (""))
$Strings2.Add(46, (""))
$Strings2.Add(47, (New-BSStep -MidiNumber "88" -Velocity 80 -NoteLength 1552))
$Strings2.Add(48, (""))
############################
$Strings2.Add(49, (""))
$Strings2.Add(50, (""))
$Strings2.Add(51, (""))
$Strings2.Add(52, (""))
############################
$Strings2.Add(53, (""))
$Strings2.Add(54, (""))
$Strings2.Add(55, (""))
$Strings2.Add(56, (""))
############################
$Strings2.Add(57, (""))
$Strings2.Add(58, (""))#(New-BSStep -MidiNumber "81" -Velocity 80 -NoteLength 555))
$Strings2.Add(59, (""))
$Strings2.Add(60, (""))
############################
$Strings2.Add(61, (""))
$Strings2.Add(62, (""))
$Strings2.Add(63, (New-BSStep -MidiNumber "84" -Velocity 80 -NoteLength 700))
$Strings2.Add(64, (""))
############################
$Strings2.Add(65, (""))
$Strings2.Add(66, (""))
$Strings2.Add(67, (""))
$Strings2.Add(68, (""))
############################
$Strings2.Add(69, (New-BSStep -MidiNumber "83" -Velocity 80 -NoteLength 550))
$Strings2.Add(70, (""))
$Strings2.Add(71, (""))
$Strings2.Add(72, (""))
############################
$Strings2.Add(73, (New-BSStep -MidiNumber "81" -Velocity 80 -NoteLength 2680))
$Strings2.Add(74, (""))
$Strings2.Add(75, (""))
$Strings2.Add(76, (""))
############################
$Strings2.Add(77, (""))
$Strings2.Add(78, (""))
$Strings2.Add(79, (""))
$Strings2.Add(80, (""))
############################
$Strings2.Add(81, (""))
$Strings2.Add(82, (""))
$Strings2.Add(83, (""))
$Strings2.Add(84, (""))
############################
$Strings2.Add(85, (""))
$Strings2.Add(86, (""))
$Strings2.Add(87, (""))
$Strings2.Add(88, (""))
############################
$Strings2.Add(89, (""))
$Strings2.Add(90, (""))
$Strings2.Add(91, (""))
$Strings2.Add(92, (""))
############################
$Strings2.Add(93, (""))
$Strings2.Add(94, (New-BSStep -MidiNumber "84" -Velocity 80 -NoteLength 750))
$Strings2.Add(95, (""))
$Strings2.Add(96, (""))
############################
$Strings2.Add(97, (""))
$Strings2.Add(98, (""))
$Strings2.Add(99, (""))
$Strings2.Add(100, (""))
############################
$Strings2.Add(101, (New-BSStep -MidiNumber "83" -Velocity 80 -NoteLength 500))
$Strings2.Add(102, (""))
$Strings2.Add(103, (""))
$Strings2.Add(104, (""))
############################
$Strings2.Add(105, (New-BSStep -MidiNumber "81" -Velocity 80 -NoteLength 740))
$Strings2.Add(106, (""))
$Strings2.Add(107, (""))
$Strings2.Add(108, (""))
############################
$Strings2.Add(109, (""))
$Strings2.Add(110, (New-BSStep -MidiNumber "88" -Velocity 80 -NoteLength 2500))
$Strings2.Add(111, (""))
$Strings2.Add(112, (""))


$BlueDrums = New-BSPattern -Name "BlueDrums" -Instrument "Drum" -Notes $DrumSteps
$IntroDrumManyKicks = New-BSPattern -Name "IntroDrumManyKicks" -Instrument "Drum" -Notes $DrumSteps2
$IntroDrumManyKicksWithHatSnare = New-BSPattern -Name "IntroDrumManyKicksWithHatSnare" -Instrument "Drum" -Notes $DrumSteps3
$DrumFillPattern = New-BSPattern -Name "Fill1" -Instrument "Drum" -Notes $DrumFillSteps1
$DrumLittleFillPattern = New-BSPattern -Name "Fill2" -Instrument "Drum" -Notes $DrumLittleFillSteps

$BassIntroPattern1 = New-BSPattern -Name "BlueBassIntro" -Instrument "Bass" -Notes $IntroBassLine
$BassPattern1 = New-BSPattern -Name "BlueBass" -Instrument "Bass" -Notes $MainBassLine

$SynthPattern1 = New-BSPattern -Name "BlueSynth" -Instrument "Synth" -Notes $SynthSteps
$StringPattern1 = New-BSPattern -Name "TheStrings" -Instrument "Synth" -Notes $Strings
$StringPattern2 = New-BSPattern -Name "TheStrings" -Instrument "Synth" -Notes $Strings2


$DrumSequence = @(
         
    #Intro
    (New-BSSequencePattern -FirstStep 1   -LastStep 192 -Pattern $IntroDrumManyKicks)
    (New-BSSequencePattern -FirstStep 193 -LastStep 320 -Pattern $IntroDrumManyKicksWithHatSnare)
    (New-BSSequencePattern -FirstStep 321 -LastStep 352 -Pattern $DrumFillPattern)

    #Main1
    (New-BSSequencePattern -FirstStep 353 -LastStep 608 -Pattern $BlueDrums)
    (New-BSSequencePattern -FirstStep 609 -LastStep 640 -Pattern $DrumFillPattern)
    (New-BSSequencePattern -FirstStep 641 -LastStep 656 -Pattern $DrumLittleFillPattern)

    #Main2  - Vox STart
    #(New-BSSequencePattern -FirstStep 785 -LastStep 1008 -Pattern $BlueDrums)
    #(New-BSSequencePattern -FirstStep 1009 -LastStep 1040 -Pattern $DrumFillPattern)

    #End
    #(New-BSSequencePattern -FirstStep 1041 -LastStep 1104 -Pattern $IntroDrumManyKicks)
)

$BassSequence = @(
    #Intro
    (New-BSSequencePattern -FirstStep 193 -LastStep 320 -Pattern $BassIntroPattern1)
    #Main
    (New-BSSequencePattern -FirstStep 353 -LastStep 608 -Pattern $BassPattern1)
    #(New-BSSequencePattern -FirstStep 785 -LastStep 1008 -Pattern $BassPattern1)

)

$SynthSequence = @(
    #Intro
    (New-BSSequencePattern -FirstStep 65 -LastStep 320 -Pattern $SynthPattern1 )
    #Main
    (New-BSSequencePattern -FirstStep 481 -LastStep 592 -Pattern $StringPattern2)


    
)

New-BSSong -Name $Name -BPM $BPM -TotalStepsToPlay $TotalStepsToPlay -DrumSequence $DrumSequence -BassSequence $BassSequence -SynthSequence $SynthSequence