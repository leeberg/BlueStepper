<# Human League - Don't you want me baby#>
$Name = "Don't you want me baby"
$BPM = 118
$TotalStepsToPlay = 704



# Intro with main hook
# SImple Bass - Some Highlight Synths - Vox M
# SImple Bass - Perky Synths - Vox F
# Build BUil Bass - Build up Synth - Vox M
# Main Bit - Simple Bass - VOX MF
# SImple bAss -muted synth - VOX F
# SImple bAss - stringey synth - VOX M
# Build BUil Bass - Build up Synth - Vox M
# Main Bit - Simple Bass - VOX MF
# main hook
# Outro
# Intro with main hook


[hashtable]$DrumSteps = @{ }
$DrumSteps.Add(1, ((New-BSStep -MusicNote "Kick"),(New-BSStep -MusicNote "ClosedHat"),(New-BSStep -MusicNote "TomHigh")))
$DrumSteps.Add(2, (New-BSStep -MusicNote "ClosedHat"))
$DrumSteps.Add(3, (New-BSStep -MusicNote "ClosedHat"))
$DrumSteps.Add(4, (New-BSStep -MusicNote "ClosedHat"))
#################################
$DrumSteps.Add(5, ((New-BSStep -MusicNote "Snare"),(New-BSStep -MusicNote "Clap"),(New-BSStep -MusicNote "ClosedHat")))
$DrumSteps.Add(6, (New-BSStep -MusicNote "ClosedHat"))
$DrumSteps.Add(7, (New-BSStep -MusicNote "ClosedHat"))
$DrumSteps.Add(8, ((New-BSStep -MusicNote "Kick"),(New-BSStep -MusicNote "ClosedHat"),(New-BSStep -MusicNote "TomHigh")))
#################################
$DrumSteps.Add(9, ((New-BSStep -MusicNote "Kick"),(New-BSStep -MusicNote "ClosedHat"),(New-BSStep -MusicNote "TomHigh")))
$DrumSteps.Add(10, (New-BSStep -MusicNote "ClosedHat"))
$DrumSteps.Add(11, (New-BSStep -MusicNote "ClosedHat"))
$DrumSteps.Add(12, (New-BSStep -MusicNote "ClosedHat"))
#################################
$DrumSteps.Add(13, ((New-BSStep -MusicNote "Snare"),(New-BSStep -MusicNote "Clap"),(New-BSStep -MusicNote "ClosedHat")))
$DrumSteps.Add(14, (New-BSStep -MusicNote "ClosedHat"))
$DrumSteps.Add(15, (New-BSStep -MusicNote "ClosedHat"))
$DrumSteps.Add(16, (New-BSStep -MusicNote "ClosedHat"))


[hashtable]$DrumStepsAlt1 = @{ }
$DrumStepsAlt1.Add(1, ((New-BSStep -MusicNote "Kick"),(New-BSStep -MusicNote "ClosedHat"),(New-BSStep -MusicNote "TomHigh")))
$DrumStepsAlt1.Add(2, (New-BSStep -MusicNote "ClosedHat"))
$DrumStepsAlt1.Add(3, (New-BSStep -MusicNote "ClosedHat"))
$DrumStepsAlt1.Add(4, (New-BSStep -MusicNote "ClosedHat"))
#################################
$DrumStepsAlt1.Add(5, ((New-BSStep -MusicNote "Snare"),(New-BSStep -MusicNote "Clap"),(New-BSStep -MusicNote "ClosedHat")))
$DrumStepsAlt1.Add(6, (New-BSStep -MusicNote "ClosedHat"))
$DrumStepsAlt1.Add(7, (New-BSStep -MusicNote "ClosedHat"))
$DrumStepsAlt1.Add(8, ((New-BSStep -MusicNote "Kick"),(New-BSStep -MusicNote "ClosedHat"),(New-BSStep -MusicNote "TomHigh")))
#################################
$DrumStepsAlt1.Add(9, ((New-BSStep -MusicNote "Kick"),(New-BSStep -MusicNote "ClosedHat"),(New-BSStep -MusicNote "TomHigh")))
$DrumStepsAlt1.Add(10, (New-BSStep -MusicNote "ClosedHat"))
$DrumStepsAlt1.Add(11, ((New-BSStep -MusicNote "Snare"),(New-BSStep -MusicNote "Clap"),(New-BSStep -MusicNote "ClosedHat")))
$DrumStepsAlt1.Add(12, (New-BSStep -MusicNote "ClosedHat"))
#################################
$DrumStepsAlt1.Add(13, ((New-BSStep -MusicNote "Snare"),(New-BSStep -MusicNote "Clap"),(New-BSStep -MusicNote "ClosedHat")))
$DrumStepsAlt1.Add(14, (New-BSStep -MusicNote "ClosedHat"))
$DrumStepsAlt1.Add(15, ((New-BSStep -MusicNote "Snare"),(New-BSStep -MusicNote "Clap"),(New-BSStep -MusicNote "ClosedHat")))
$DrumStepsAlt1.Add(16, (New-BSStep -MusicNote "ClosedHat"))



[hashtable]$BassSteps = @{ }
$BassSteps.Add(1, (New-BSStep -MusicNote "A3"))
$BassSteps.Add(2, (""))
$BassSteps.Add(3, (""))
$BassSteps.Add(4, (""))
#################################
$BassSteps.Add(5, (New-BSStep -MusicNote "A3"))
$BassSteps.Add(6, (""))
$BassSteps.Add(7, (""))
$BassSteps.Add(8, (New-BSStep -MusicNote "E3"))
#################################
$BassSteps.Add(9, (New-BSStep -MusicNote "G3"))
$BassSteps.Add(10, (""))
$BassSteps.Add(11, (New-BSStep -MusicNote "A3"))
$BassSteps.Add(12, (""))
#################################
$BassSteps.Add(13, (""))
$BassSteps.Add(14, (""))
$BassSteps.Add(15, (""))
$BassSteps.Add(16, (""))
#################################
$BassSteps.Add(17, (New-BSStep -MusicNote "A3"))
$BassSteps.Add(18, (""))
$BassSteps.Add(19, (New-BSStep -MusicNote "E3"))
$BassSteps.Add(20, (""))
#################################
$BassSteps.Add(21, (New-BSStep -MusicNote "G3"))
$BassSteps.Add(22, (""))
$BassSteps.Add(23, (New-BSStep -MusicNote "C4"))
$BassSteps.Add(24, (""))
#################################
$BassSteps.Add(25, (""))
$BassSteps.Add(26, (""))
$BassSteps.Add(27, (""))
$BassSteps.Add(28, (""))
#################################
$BassSteps.Add(29, (""))
$BassSteps.Add(30, (""))
$BassSteps.Add(31, (""))
$BassSteps.Add(32, (""))
#################################
$BassSteps.Add(33, (New-BSStep -MusicNote "A3"))
$BassSteps.Add(34, (""))
$BassSteps.Add(35, (""))
$BassSteps.Add(36, (""))
#################################
$BassSteps.Add(37, (New-BSStep -MusicNote "A3"))
$BassSteps.Add(38, (""))
$BassSteps.Add(39, (""))
$BassSteps.Add(40, (New-BSStep -MusicNote "E3"))
#################################
$BassSteps.Add(41, (New-BSStep -MusicNote "G3"))
$BassSteps.Add(42, (""))
$BassSteps.Add(43, (New-BSStep -MusicNote "A3"))
$BassSteps.Add(44, (""))
#################################
$BassSteps.Add(45, (""))
$BassSteps.Add(46, (""))
$BassSteps.Add(47, (""))
$BassSteps.Add(48, (""))
#################################
$BassSteps.Add(49, (New-BSStep -MusicNote "A3"))
$BassSteps.Add(50, (""))
$BassSteps.Add(51, (New-BSStep -MusicNote "C4"))
$BassSteps.Add(52, (""))
#################################
$BassSteps.Add(53, (New-BSStep -MusicNote "G3"))
$BassSteps.Add(54, (""))
$BassSteps.Add(55, (New-BSStep -MusicNote "A3"))
$BassSteps.Add(56, (""))
#################################
$BassSteps.Add(57, (""))
$BassSteps.Add(58, (""))
$BassSteps.Add(59, (""))
$BassSteps.Add(60, (""))
#################################
$BassSteps.Add(61, (""))
$BassSteps.Add(62, (""))
$BassSteps.Add(63, (""))
$BassSteps.Add(64, (""))
#################################
$BassSteps.Add(65, (New-BSStep -MusicNote "A3"))
$BassSteps.Add(66, (""))
$BassSteps.Add(67, (""))
$BassSteps.Add(68, (""))
#################################
$BassSteps.Add(69, (New-BSStep -MusicNote "A3"))
$BassSteps.Add(70, (""))
$BassSteps.Add(71, (""))
$BassSteps.Add(72, (New-BSStep -MusicNote "E3"))
#################################
$BassSteps.Add(73, (New-BSStep -MusicNote "G3"))
$BassSteps.Add(74, (""))
$BassSteps.Add(75, (New-BSStep -MusicNote "A3"))
$BassSteps.Add(76, (""))
#################################
$BassSteps.Add(77, (""))
$BassSteps.Add(78, (""))
$BassSteps.Add(79, (""))
$BassSteps.Add(80, (""))
#################################
$BassSteps.Add(81, (New-BSStep -MusicNote "A3"))
$BassSteps.Add(82, (""))
$BassSteps.Add(83, (New-BSStep -MusicNote "E3"))
$BassSteps.Add(84, (""))
#################################
$BassSteps.Add(85, (New-BSStep -MusicNote "G3"))
$BassSteps.Add(86, (""))
$BassSteps.Add(87, (New-BSStep -MusicNote "C4"))
$BassSteps.Add(88, (""))
#################################
$BassSteps.Add(89, (""))
$BassSteps.Add(90, (""))
$BassSteps.Add(91, (""))
$BassSteps.Add(92, (""))
#################################
$BassSteps.Add(93, (""))
$BassSteps.Add(94, (""))
$BassSteps.Add(95, (""))
$BassSteps.Add(96, (""))
#################################
$BassSteps.Add(97, (New-BSStep -MusicNote "A3"))
$BassSteps.Add(98, (""))
$BassSteps.Add(99, (""))
$BassSteps.Add(100, (""))
#################################
$BassSteps.Add(101, (New-BSStep -MusicNote "A3"))
$BassSteps.Add(102, (""))
$BassSteps.Add(103, (""))
$BassSteps.Add(104, (New-BSStep -MusicNote "E3"))
#################################
$BassSteps.Add(105, (New-BSStep -MusicNote "G3"))
$BassSteps.Add(106, (""))
$BassSteps.Add(107, (New-BSStep -MusicNote "A3"))
$BassSteps.Add(108, (""))
#################################
$BassSteps.Add(109, (""))
$BassSteps.Add(110, (""))
$BassSteps.Add(111, (""))
$BassSteps.Add(112, (""))
#################################
$BassSteps.Add(113, (New-BSStep -MusicNote "D4"))
$BassSteps.Add(114, (New-BSStep -MusicNote "E4"))
$BassSteps.Add(115, (New-BSStep -MusicNote "D4"))
$BassSteps.Add(116, (New-BSStep -MusicNote "C4"))
#################################
$BassSteps.Add(117, (New-BSStep -MusicNote "B3"))
$BassSteps.Add(118, (""))
$BassSteps.Add(119, (New-BSStep -MusicNote "A3"))
$BassSteps.Add(120, (""))
#################################
$BassSteps.Add(121, (""))
$BassSteps.Add(122, (""))
$BassSteps.Add(123, (""))
$BassSteps.Add(124, (""))
#################################
$BassSteps.Add(125, (""))
$BassSteps.Add(126, (""))
$BassSteps.Add(127, (""))
$BassSteps.Add(128, (""))


[hashtable]$BassStepsMild = @{ }
$BassStepsMild.Add(1, (New-BSStep -MusicNote "F3"))
$BassStepsMild.Add(2, (""))
$BassStepsMild.Add(3, (New-BSStep -MusicNote "F3"))
$BassStepsMild.Add(4, (""))
#################################
$BassStepsMild.Add(5, (New-BSStep -MusicNote "C3"))
$BassStepsMild.Add(6, (New-BSStep -MusicNote "F3"))
$BassStepsMild.Add(7, (""))
$BassStepsMild.Add(8, (New-BSStep -MusicNote "C3"))
#################################
$BassStepsMild.Add(9, (New-BSStep -MusicNote "F3"))
$BassStepsMild.Add(10, (""))
$BassStepsMild.Add(11, (""))
$BassStepsMild.Add(12, (""))
#################################
$BassStepsMild.Add(13, (""))
$BassStepsMild.Add(14, (""))
$BassStepsMild.Add(15, (""))
$BassStepsMild.Add(16, (""))
#################################
$BassStepsMild.Add(17, (New-BSStep -MusicNote "G3"))
$BassStepsMild.Add(18, (""))
$BassStepsMild.Add(19, (New-BSStep -MusicNote "G3"))
$BassStepsMild.Add(20, (""))
#################################
$BassStepsMild.Add(21, (New-BSStep -MusicNote "D3"))
$BassStepsMild.Add(22, (New-BSStep -MusicNote "G3"))
$BassStepsMild.Add(23, (""))
$BassStepsMild.Add(24, (New-BSStep -MusicNote "D3"))
#################################
$BassStepsMild.Add(25, (New-BSStep -MusicNote "G3"))
$BassStepsMild.Add(26, (""))
$BassStepsMild.Add(27, (""))
$BassStepsMild.Add(28, (""))
#################################
$BassStepsMild.Add(29, (""))
$BassStepsMild.Add(30, (""))
$BassStepsMild.Add(31, (""))
$BassStepsMild.Add(32, (""))


[hashtable]$BassStepsMildUp = @{ }
$BassStepsMildUp.Add(1, (New-BSStep -MusicNote "F3"))
$BassStepsMildUp.Add(2, (""))
$BassStepsMildUp.Add(3, (New-BSStep -MusicNote "F3"))
$BassStepsMildUp.Add(4, (""))
#################################
$BassStepsMildUp.Add(5, (New-BSStep -MusicNote "C3"))
$BassStepsMildUp.Add(6, (New-BSStep -MusicNote "F3"))
$BassStepsMildUp.Add(7, (""))
$BassStepsMildUp.Add(8, (New-BSStep -MusicNote "C3"))
#################################
$BassStepsMildUp.Add(9, (New-BSStep -MusicNote "F3"))
$BassStepsMildUp.Add(10, (""))
$BassStepsMildUp.Add(11, (""))
$BassStepsMildUp.Add(12, (""))
#################################
$BassStepsMildUp.Add(13, (""))
$BassStepsMildUp.Add(14, (""))
$BassStepsMildUp.Add(15, (""))
$BassStepsMildUp.Add(16, (""))
#################################
$BassStepsMildUp.Add(17, (New-BSStep -MusicNote "G3"))
$BassStepsMildUp.Add(18, (""))
$BassStepsMildUp.Add(19, (New-BSStep -MusicNote "G3"))
$BassStepsMildUp.Add(20, (""))
#################################
$BassStepsMildUp.Add(21, (New-BSStep -MusicNote "D3"))
$BassStepsMildUp.Add(22, (New-BSStep -MusicNote "G3"))
$BassStepsMildUp.Add(23, (""))
$BassStepsMildUp.Add(24, (New-BSStep -MusicNote "D3"))
#################################
$BassStepsMildUp.Add(25, (New-BSStep -MusicNote "G3"))
$BassStepsMildUp.Add(26, (""))
$BassStepsMildUp.Add(27, (""))
$BassStepsMildUp.Add(28, (""))
#################################
$BassStepsMildUp.Add(29, (""))
$BassStepsMildUp.Add(30, (""))
$BassStepsMildUp.Add(31, (""))
$BassStepsMildUp.Add(32, (""))


[hashtable]$BassStepsMild2 = @{ }
$BassStepsMild2.Add(1, (New-BSStep -MusicNote "F3"))
$BassStepsMild2.Add(2, (""))
$BassStepsMild2.Add(3, (New-BSStep -MusicNote "F3"))
$BassStepsMild2.Add(4, (""))
#################################
$BassStepsMild2.Add(5, (New-BSStep -MusicNote "F3"))
$BassStepsMild2.Add(6, (New-BSStep -MusicNote "F3"))
$BassStepsMild2.Add(7, (""))
$BassStepsMild2.Add(8, (New-BSStep -MusicNote "F3"))
#################################
$BassStepsMild2.Add(9, (New-BSStep -MusicNote "F3"))
$BassStepsMild2.Add(10, (""))
$BassStepsMild2.Add(11, (""))
$BassStepsMild2.Add(12, (""))
#################################
$BassStepsMild2.Add(13, (""))
$BassStepsMild2.Add(14, (""))
$BassStepsMild2.Add(15, (""))
$BassStepsMild2.Add(16, (""))
#################################
$BassStepsMild2.Add(17, (New-BSStep -MusicNote "G3"))
$BassStepsMild2.Add(18, (""))
$BassStepsMild2.Add(19, (New-BSStep -MusicNote "G3"))
$BassStepsMild2.Add(20, (""))
#################################
$BassStepsMild2.Add(21, (New-BSStep -MusicNote "G3"))
$BassStepsMild2.Add(22, (New-BSStep -MusicNote "G3"))
$BassStepsMild2.Add(23, (""))
$BassStepsMild2.Add(24, (New-BSStep -MusicNote "G3"))
#################################
$BassStepsMild2.Add(25, (New-BSStep -MusicNote "G3"))
$BassStepsMild2.Add(26, (""))
$BassStepsMild2.Add(27, (""))
$BassStepsMild2.Add(28, (""))
#################################
$BassStepsMild2.Add(29, (""))
$BassStepsMild2.Add(30, (""))
$BassStepsMild2.Add(31, (""))
$BassStepsMild2.Add(32, (""))


[hashtable]$BassStepsBuildUp = @{ }
$BassStepsBuildUp.Add(1, (New-BSStep -MusicNote "D3"))
$BassStepsBuildUp.Add(2, (""))
$BassStepsBuildUp.Add(3, (New-BSStep -MusicNote "D3"))
$BassStepsBuildUp.Add(4, (""))
#################################
$BassStepsBuildUp.Add(5, (New-BSStep -MusicNote "A2"))
$BassStepsBuildUp.Add(6, (New-BSStep -MusicNote "D3"))
$BassStepsBuildUp.Add(7, (""))
$BassStepsBuildUp.Add(8, (New-BSStep -MusicNote "A2"))
#################################
$BassStepsBuildUp.Add(9, (New-BSStep -MusicNote "G3" -NoteLength 300))
$BassStepsBuildUp.Add(10, (""))
$BassStepsBuildUp.Add(11, (""))
$BassStepsBuildUp.Add(12, (""))
#################################
$BassStepsBuildUp.Add(13, (""))
$BassStepsBuildUp.Add(14, (""))
$BassStepsBuildUp.Add(15, (""))
$BassStepsBuildUp.Add(16, (""))
####################################################################
$BassStepsBuildUp.Add(17, (New-BSStep -MusicNote "A4"))
$BassStepsBuildUp.Add(18, (""))
$BassStepsBuildUp.Add(19, (New-BSStep -MusicNote "A4"))
$BassStepsBuildUp.Add(20, (""))
#################################
$BassStepsBuildUp.Add(21, (New-BSStep -MusicNote "A4"))
$BassStepsBuildUp.Add(22, (""))
$BassStepsBuildUp.Add(23, (New-BSStep -MusicNote "A4"))
$BassStepsBuildUp.Add(24, (""))
#################################
$BassStepsBuildUp.Add(25, (New-BSStep -MusicNote "A4"))
$BassStepsBuildUp.Add(26, (""))
$BassStepsBuildUp.Add(27, (New-BSStep -MusicNote "A4"))
$BassStepsBuildUp.Add(28, (""))
#################################
$BassStepsBuildUp.Add(29, (New-BSStep -MusicNote "A4"))
$BassStepsBuildUp.Add(30, (""))
$BassStepsBuildUp.Add(31, (New-BSStep -MusicNote "A4"))
$BassStepsBuildUp.Add(32, (New-BSStep -MusicNote "A4"))
#####################################################################
$BassStepsBuildUp.Add(33, (New-BSStep -MusicNote "B4"))
$BassStepsBuildUp.Add(34, (""))
$BassStepsBuildUp.Add(35, (New-BSStep -MusicNote "B4"))
$BassStepsBuildUp.Add(36, (""))
#################################
$BassStepsBuildUp.Add(37, (New-BSStep -MusicNote "B4"))
$BassStepsBuildUp.Add(38, (""))
$BassStepsBuildUp.Add(39, (New-BSStep -MusicNote "B4"))
$BassStepsBuildUp.Add(40, (""))
#################################
$BassStepsBuildUp.Add(41, (New-BSStep -MusicNote "B4"))
$BassStepsBuildUp.Add(42, (""))
$BassStepsBuildUp.Add(43, (New-BSStep -MusicNote "B4"))
$BassStepsBuildUp.Add(44, (""))
#################################
$BassStepsBuildUp.Add(45, (New-BSStep -MusicNote "B4"))
$BassStepsBuildUp.Add(46, (""))
$BassStepsBuildUp.Add(47, (New-BSStep -MusicNote "B4"))
$BassStepsBuildUp.Add(48, (""))
#####################################################################
$BassStepsBuildUp.Add(49, (New-BSStep -MusicNote "C5"))
$BassStepsBuildUp.Add(50, (""))
$BassStepsBuildUp.Add(51, (New-BSStep -MusicNote "C5"))
$BassStepsBuildUp.Add(52, (""))
#################################
$BassStepsBuildUp.Add(53, (New-BSStep -MusicNote "C5"))
$BassStepsBuildUp.Add(54, (""))
$BassStepsBuildUp.Add(55, (New-BSStep -MusicNote "C5"))
$BassStepsBuildUp.Add(56, (""))
#################################
$BassStepsBuildUp.Add(57, (New-BSStep -MusicNote "C5"))
$BassStepsBuildUp.Add(58, (""))
$BassStepsBuildUp.Add(59, (New-BSStep -MusicNote "C5"))
$BassStepsBuildUp.Add(60, (""))
#################################
$BassStepsBuildUp.Add(61, (New-BSStep -MusicNote "C5"))
$BassStepsBuildUp.Add(62, (""))
$BassStepsBuildUp.Add(63, (New-BSStep -MusicNote "C5"))
$BassStepsBuildUp.Add(64, (New-BSStep -MusicNote "D5"))
#####################################################################
$BassStepsBuildUp.Add(65, (New-BSStep -MusicNote "D5"))
$BassStepsBuildUp.Add(66, (""))
$BassStepsBuildUp.Add(67, (New-BSStep -MusicNote "D5"))
$BassStepsBuildUp.Add(68, (""))
#################################
$BassStepsBuildUp.Add(69, (New-BSStep -MusicNote "D5"))
$BassStepsBuildUp.Add(70, (""))
$BassStepsBuildUp.Add(71, (New-BSStep -MusicNote "D5"))
$BassStepsBuildUp.Add(72, (""))
#################################
$BassStepsBuildUp.Add(73, (New-BSStep -MusicNote "D5"))
$BassStepsBuildUp.Add(74, (""))
$BassStepsBuildUp.Add(75, (New-BSStep -MusicNote "D5"))
$BassStepsBuildUp.Add(76, (""))
#################################
$BassStepsBuildUp.Add(77, (New-BSStep -MusicNote "D5"))
$BassStepsBuildUp.Add(78, (""))
$BassStepsBuildUp.Add(79, (New-BSStep -MusicNote "D5"))
$BassStepsBuildUp.Add(80, (""))
#####################################################################  80



[hashtable]$LongStrings1 = @{ }
$LongStrings1.Add(1, ((New-BSStep -MusicNote "A3" -NoteLength 1250 ),(New-BSStep -MusicNote "C4" -NoteLength 1250 ),(New-BSStep -MusicNote "E4" -NoteLength 1250)))
$LongStrings1.Add(2, (""))
$LongStrings1.Add(3, (""))
$LongStrings1.Add(4, (""))
#################################
$LongStrings1.Add(5, (""))
$LongStrings1.Add(6, (""))
$LongStrings1.Add(7, (""))
$LongStrings1.Add(8, (""))
#################################
$LongStrings1.Add(9, (""))
$LongStrings1.Add(10, (""))
$LongStrings1.Add(11, (""))
$LongStrings1.Add(12, (""))
#################################
$LongStrings1.Add(13, (""))
$LongStrings1.Add(14, (""))
$LongStrings1.Add(15, (""))
$LongStrings1.Add(16, (""))
####################################################################
$LongStrings1.Add(17, ((New-BSStep -MusicNote "A3" -NoteLength 1250),(New-BSStep -MusicNote "C4" -NoteLength 1250 ),(New-BSStep -MusicNote "F4" -NoteLength 1250)))
$LongStrings1.Add(18, (""))
$LongStrings1.Add(19, (""))
$LongStrings1.Add(20, (""))
#################################
$LongStrings1.Add(21, (""))
$LongStrings1.Add(22, (""))
$LongStrings1.Add(23, (""))
$LongStrings1.Add(24, (""))
#################################
$LongStrings1.Add(25, (""))
$LongStrings1.Add(26, (""))
$LongStrings1.Add(27, (""))
$LongStrings1.Add(28, (""))
#################################
$LongStrings1.Add(29, (""))
$LongStrings1.Add(30, (""))
$LongStrings1.Add(31, (""))
$LongStrings1.Add(32, (""))
#####################################################################
$LongStrings1.Add(33, ((New-BSStep -MusicNote "A3" -NoteLength 1250 ),(New-BSStep -MusicNote "C4" -NoteLength 1250 ),(New-BSStep -MusicNote "E4" -NoteLength 1250 )))
$LongStrings1.Add(34, (""))
$LongStrings1.Add(35, (""))
$LongStrings1.Add(36, (""))
#################################
$LongStrings1.Add(37, (""))
$LongStrings1.Add(38, (""))
$LongStrings1.Add(39, (""))
$LongStrings1.Add(40, (""))
#################################
$LongStrings1.Add(41, (""))
$LongStrings1.Add(42, (""))
$LongStrings1.Add(43, (""))
$LongStrings1.Add(44, (""))
#################################
$LongStrings1.Add(45, (""))
$LongStrings1.Add(46, (""))
$LongStrings1.Add(47, (""))
$LongStrings1.Add(48, (""))
#####################################################################
$LongStrings1.Add(49, ((New-BSStep -MusicNote "B3" -NoteLength 1250),(New-BSStep -MusicNote "F3" -NoteLength 1250 ),(New-BSStep -MusicNote "E3" -NoteLength 1250)))
$LongStrings1.Add(50, (""))
$LongStrings1.Add(51, (""))
$LongStrings1.Add(52, (""))
#################################
$LongStrings1.Add(53, (""))
$LongStrings1.Add(54, (""))
$LongStrings1.Add(55, (""))
$LongStrings1.Add(56, (""))
#################################
$LongStrings1.Add(57, (""))
$LongStrings1.Add(58, (""))
$LongStrings1.Add(59, (""))
$LongStrings1.Add(60, (""))
#################################
$LongStrings1.Add(61, (""))
$LongStrings1.Add(62, (""))
$LongStrings1.Add(63, (""))
$LongStrings1.Add(64, (""))
#####################################################################



[hashtable]$LongStrings2 = @{ }
$LongStrings2.Add(1, ((New-BSStep -MusicNote "A3" -NoteLength 1250 ),(New-BSStep -MusicNote "C4" -NoteLength 1250 ),(New-BSStep -MusicNote "E4" -NoteLength 1250)))
$LongStrings2.Add(2, (""))
$LongStrings2.Add(3, (""))
$LongStrings2.Add(4, (""))
#################################
$LongStrings2.Add(5, (""))
$LongStrings2.Add(6, (""))
$LongStrings2.Add(7, (""))
$LongStrings2.Add(8, (""))
#################################
$LongStrings2.Add(9, (""))
$LongStrings2.Add(10, (""))
$LongStrings2.Add(11, (""))
$LongStrings2.Add(12, (""))
#################################
$LongStrings2.Add(13, (""))
$LongStrings2.Add(14, (""))
$LongStrings2.Add(15, (""))
$LongStrings2.Add(16, (""))
####################################################################
$LongStrings2.Add(17, ((New-BSStep -MusicNote "A3" -NoteLength 1250),(New-BSStep -MusicNote "C4" -NoteLength 1250 ),(New-BSStep -MusicNote "F4" -NoteLength 1250)))
$LongStrings2.Add(18, (""))
$LongStrings2.Add(19, (""))
$LongStrings2.Add(20, (""))
#################################
$LongStrings2.Add(21, (""))
$LongStrings2.Add(22, (""))
$LongStrings2.Add(23, (""))
$LongStrings2.Add(24, (""))
#################################
$LongStrings2.Add(25, (""))
$LongStrings2.Add(26, (""))
$LongStrings2.Add(27, (""))
$LongStrings2.Add(28, (""))
#################################
$LongStrings2.Add(29, (""))
$LongStrings2.Add(30, (""))
$LongStrings2.Add(31, (""))
$LongStrings2.Add(32, (""))
#####################################################################
$LongStrings2.Add(33, ((New-BSStep -MusicNote "A3" -NoteLength 1250 ),(New-BSStep -MusicNote "C4" -NoteLength 1250 ),(New-BSStep -MusicNote "E4" -NoteLength 1250 )))
$LongStrings2.Add(34, (""))
$LongStrings2.Add(35, (""))
$LongStrings2.Add(36, (""))
#################################
$LongStrings2.Add(37, (""))
$LongStrings2.Add(38, (""))
$LongStrings2.Add(39, (""))
$LongStrings2.Add(40, (""))
#################################
$LongStrings2.Add(41, (""))
$LongStrings2.Add(42, (""))
$LongStrings2.Add(43, (""))
$LongStrings2.Add(44, (""))
#################################
$LongStrings2.Add(45, (""))
$LongStrings2.Add(46, (""))
$LongStrings2.Add(47, (""))
$LongStrings2.Add(48, (""))
#####################################################################
$LongStrings2.Add(49, ((New-BSStep -MusicNote "B3" -NoteLength 1250),(New-BSStep -MusicNote "F3" -NoteLength 1250 ),(New-BSStep -MusicNote "E3" -NoteLength 1250)))
$LongStrings2.Add(50, (""))
$LongStrings2.Add(51, (""))
$LongStrings2.Add(52, (""))
#################################
$LongStrings2.Add(53, (""))
$LongStrings2.Add(54, (""))
$LongStrings2.Add(55, (""))
$LongStrings2.Add(56, (""))
#################################
$LongStrings2.Add(57, (""))
$LongStrings2.Add(58, (""))
$LongStrings2.Add(59, (""))
$LongStrings2.Add(60, (""))
#################################
$LongStrings2.Add(61, (""))
$LongStrings2.Add(62, (""))
$LongStrings2.Add(63, (""))
$LongStrings2.Add(64, (""))
#####################################################################





[hashtable]$EPiano1 = @{ }
$EPiano1.Add(1, (""))
$EPiano1.Add(2, (""))
$EPiano1.Add(3, (""))
$EPiano1.Add(4, (""))
#################################
$EPiano1.Add(5, (""))
$EPiano1.Add(6, (""))
$EPiano1.Add(7, (""))
$EPiano1.Add(8, (""))
#################################
$EPiano1.Add(9, (""))
$EPiano1.Add(10, (""))
$EPiano1.Add(11, (""))
$EPiano1.Add(12, (""))
#################################
$EPiano1.Add(13, ((New-BSStep -MusicNote "G3" -NoteLength 166 ),(New-BSStep -MusicNote "B3" -NoteLength 166 ),(New-BSStep -MusicNote "D4" -NoteLength 166)))
$EPiano1.Add(14, (""))
$EPiano1.Add(15, ((New-BSStep -MusicNote "F3" -NoteLength 1434 ),(New-BSStep -MusicNote "A3" -NoteLength 1434 ),(New-BSStep -MusicNote "C4" -NoteLength 1434)))
$EPiano1.Add(16, (""))
####################################################################
$EPiano1.Add(17, (""))
$EPiano1.Add(18, (""))
$EPiano1.Add(19, (""))
$EPiano1.Add(20, (""))
#################################
$EPiano1.Add(21, (""))
$EPiano1.Add(22, (""))
$EPiano1.Add(23, (""))
$EPiano1.Add(24, (""))
#################################
$EPiano1.Add(25, (""))
$EPiano1.Add(26, (""))
$EPiano1.Add(27, (""))
$EPiano1.Add(28, (""))
#################################
$EPiano1.Add(29, (""))
$EPiano1.Add(30, (""))
$EPiano1.Add(31, ((New-BSStep -MusicNote "A3" -NoteLength 460 ),(New-BSStep -MusicNote "C4" -NoteLength 460 ),(New-BSStep -MusicNote "E4" -NoteLength 460)))
$EPiano1.Add(32, (""))
#####################################################################
$EPiano1.Add(33, (""))
$EPiano1.Add(34, (""))
$EPiano1.Add(35, (""))
$EPiano1.Add(36, (""))
#################################
$EPiano1.Add(37, (""))
$EPiano1.Add(38, (""))
$EPiano1.Add(39, ((New-BSStep -MusicNote "G3" -NoteLength 460 ),(New-BSStep -MusicNote "B3" -NoteLength 460 ),(New-BSStep -MusicNote "D4" -NoteLength 460)))
$EPiano1.Add(40, (""))
#################################
$EPiano1.Add(41, (""))
$EPiano1.Add(42, (""))
$EPiano1.Add(43, (""))
$EPiano1.Add(44, (""))
#################################
$EPiano1.Add(45, ((New-BSStep -MusicNote "G3" -NoteLength 166 ),(New-BSStep -MusicNote "B3" -NoteLength 166 ),(New-BSStep -MusicNote "D4" -NoteLength 166)))
$EPiano1.Add(46, (""))
$EPiano1.Add(47, ((New-BSStep -MusicNote "F3" -NoteLength 1132 ),(New-BSStep -MusicNote "A3" -NoteLength 1132 ),(New-BSStep -MusicNote "C4" -NoteLength 1132)))
$EPiano1.Add(48, (""))
#####################################################################
$EPiano1.Add(49, (""))
$EPiano1.Add(50, (""))
$EPiano1.Add(51, (""))
$EPiano1.Add(52, (""))
#################################
$EPiano1.Add(53, (""))
$EPiano1.Add(54, (""))
$EPiano1.Add(55, (""))
$EPiano1.Add(56, (""))
#################################
$EPiano1.Add(57, (""))
$EPiano1.Add(58, (""))
$EPiano1.Add(59, ((New-BSStep -MusicNote "C3" -NoteLength 375 ),(New-BSStep -MusicNote "E3" -NoteLength 375 ),(New-BSStep -MusicNote "G3" -NoteLength 375)))
$EPiano1.Add(60, (""))
#################################
$EPiano1.Add(61, (""))
$EPiano1.Add(62, (""))
$EPiano1.Add(63, ((New-BSStep -MusicNote "D3" -NoteLength 1130 ),(New-BSStep -MusicNote "G3" -NoteLength 1130 ),(New-BSStep -MusicNote "B3" -NoteLength 1130)))
$EPiano1.Add(64, (""))
#####################################################################






[hashtable]$HighSynth = @{ }
$HighSynth.Add(1, ((New-BSStep -MusicNote "E4" -NoteLength 1056 ),(New-BSStep -MusicNote "A4" -NoteLength 1056 ),(New-BSStep -MusicNote "C5" -NoteLength 1056)))
$HighSynth.Add(2, (""))
$HighSynth.Add(3, (""))
$HighSynth.Add(4, (""))
#################################
$HighSynth.Add(5, (""))
$HighSynth.Add(6, (""))
$HighSynth.Add(7, (""))
$HighSynth.Add(8, (""))
#################################
$HighSynth.Add(9, (""))
$HighSynth.Add(10, (""))
$HighSynth.Add(11, (""))
$HighSynth.Add(12, (""))
#################################
$HighSynth.Add(13, ((New-BSStep -MusicNote "E4" -NoteLength 100 ),(New-BSStep -MusicNote "A4" -NoteLength 100 ),(New-BSStep -MusicNote "C5" -NoteLength 100)))
$HighSynth.Add(14, (""))
$HighSynth.Add(15, ((New-BSStep -MusicNote "E4" -NoteLength 1248 ),(New-BSStep -MusicNote "G4" -NoteLength 1248 ),(New-BSStep -MusicNote "B4" -NoteLength 1248)))
$HighSynth.Add(16, (""))
####################################################################
$HighSynth.Add(17, (""))
$HighSynth.Add(18, (""))
$HighSynth.Add(19, (""))
$HighSynth.Add(20, (""))
#################################
$HighSynth.Add(21, (""))
$HighSynth.Add(22, (""))
$HighSynth.Add(23, (""))
$HighSynth.Add(24, (""))
#################################
$HighSynth.Add(25, (""))
$HighSynth.Add(26, (""))
$HighSynth.Add(27, (""))
$HighSynth.Add(28, (""))
#################################
$HighSynth.Add(29, ((New-BSStep -MusicNote "E4" -NoteLength 100 ),(New-BSStep -MusicNote "G4" -NoteLength 100 ),(New-BSStep -MusicNote "B4" -NoteLength 100)))
$HighSynth.Add(30, (""))
$HighSynth.Add(31, ((New-BSStep -MusicNote "F4" -NoteLength 1248 ),(New-BSStep -MusicNote "A4" -NoteLength 1248 ),(New-BSStep -MusicNote "C5" -NoteLength 1248)))
$HighSynth.Add(32, (""))
#####################################################################
$HighSynth.Add(33, (""))
$HighSynth.Add(34, (""))
$HighSynth.Add(35, (""))
$HighSynth.Add(36, (""))
#################################
$HighSynth.Add(37, (""))
$HighSynth.Add(38, (""))
$HighSynth.Add(39, ((New-BSStep -MusicNote "G3" -NoteLength 460 ),(New-BSStep -MusicNote "B3" -NoteLength 460 ),(New-BSStep -MusicNote "D4" -NoteLength 460)))
$HighSynth.Add(40, (""))
#################################
$HighSynth.Add(41, (""))
$HighSynth.Add(42, (""))
$HighSynth.Add(43, (""))
$HighSynth.Add(44, (""))
#################################
$HighSynth.Add(45, ((New-BSStep -MusicNote "F4" -NoteLength 100 ),(New-BSStep -MusicNote "A4" -NoteLength 100 ),(New-BSStep -MusicNote "C5" -NoteLength 100)))
$HighSynth.Add(46, (""))
$HighSynth.Add(47, ((New-BSStep -MusicNote "F4" -NoteLength 864 ),(New-BSStep -MusicNote "A4" -NoteLength 864 ),(New-BSStep -MusicNote "D5" -NoteLength 100)))
$HighSynth.Add(48, (""))
#####################################################################
$HighSynth.Add(49, ((New-BSStep -MusicNote "E5" -NoteLength 288 )))
$HighSynth.Add(50, (""))
$HighSynth.Add(51, (""))
$HighSynth.Add(52, (""))
#################################
$HighSynth.Add(53, ((New-BSStep -MusicNote "D5" -NoteLength 192 )))
$HighSynth.Add(54, (""))
$HighSynth.Add(55, (""))
$HighSynth.Add(56, (""))
#################################
$HighSynth.Add(57, ((New-BSStep -MusicNote "G4" -NoteLength 768 ),(New-BSStep -MusicNote "B4" -NoteLength 375 ),(New-BSStep -MusicNote "C5" -NoteLength 100)))
$HighSynth.Add(58, (""))
$HighSynth.Add(59, ((New-BSStep -MusicNote "D5" -NoteLength 576 )))
$HighSynth.Add(60, (""))
#################################
$HighSynth.Add(61, (""))
$HighSynth.Add(62, (""))
$HighSynth.Add(63, (""))
$HighSynth.Add(64, (""))

###############################################################################################################################################################################################################

$HighSynth.Add(65, ((New-BSStep -MusicNote "A4" -NoteLength 1056 ),(New-BSStep -MusicNote "C5" -NoteLength 1056 ),(New-BSStep -MusicNote "E5" -NoteLength 1056)))
$HighSynth.Add(66, (""))
$HighSynth.Add(67, (""))
$HighSynth.Add(68, (""))
#################################
$HighSynth.Add(69, (""))
$HighSynth.Add(70, (""))
$HighSynth.Add(71, (""))
$HighSynth.Add(72, (""))
#################################
$HighSynth.Add(73, (""))
$HighSynth.Add(74, (""))
$HighSynth.Add(75, (""))
$HighSynth.Add(76, (""))
#################################
$HighSynth.Add(77, ((New-BSStep -MusicNote "A4" -NoteLength 100 ),(New-BSStep -MusicNote "C5" -NoteLength 100 ),(New-BSStep -MusicNote "E5" -NoteLength 100)))
$HighSynth.Add(78, (""))
$HighSynth.Add(79, ((New-BSStep -MusicNote "G4" -NoteLength 1248 ),(New-BSStep -MusicNote "B4" -NoteLength 1248 ),(New-BSStep -MusicNote "E5" -NoteLength 1248)))
$HighSynth.Add(80, (""))
####################################################################
$HighSynth.Add(81, (""))
$HighSynth.Add(82, (""))
$HighSynth.Add(83, (""))
$HighSynth.Add(84, (""))
#################################
$HighSynth.Add(85, (""))
$HighSynth.Add(86, (""))
$HighSynth.Add(87, (""))
$HighSynth.Add(88, (""))
#################################
$HighSynth.Add(89, (""))
$HighSynth.Add(90, (""))
$HighSynth.Add(91, (""))
$HighSynth.Add(92, (""))
#################################
$HighSynth.Add(93, ((New-BSStep -MusicNote "G4" -NoteLength 100 ),(New-BSStep -MusicNote "B4" -NoteLength 100 ),(New-BSStep -MusicNote "E5" -NoteLength 100)))
$HighSynth.Add(94, (""))
$HighSynth.Add(95, ((New-BSStep -MusicNote "A4" -NoteLength 1248 ),(New-BSStep -MusicNote "C5" -NoteLength 1248 ),(New-BSStep -MusicNote "F5" -NoteLength 1248)))
$HighSynth.Add(96, (""))
#####################################################################
$HighSynth.Add(97, (""))
$HighSynth.Add(98, (""))
$HighSynth.Add(99, (""))
$HighSynth.Add(100, (""))
#################################
$HighSynth.Add(101, (""))
$HighSynth.Add(102, (""))
$HighSynth.Add(103, (""))
$HighSynth.Add(104, (""))
#################################
$HighSynth.Add(105, (""))
$HighSynth.Add(106, (""))
$HighSynth.Add(107, (""))
$HighSynth.Add(108, (""))
#################################
$HighSynth.Add(109, ((New-BSStep -MusicNote "A4" -NoteLength 100 ),(New-BSStep -MusicNote "C5" -NoteLength 100 ),(New-BSStep -MusicNote "F5" -NoteLength 100)))
$HighSynth.Add(110, (""))
$HighSynth.Add(111, ((New-BSStep -MusicNote "F4" -NoteLength 768 ),(New-BSStep -MusicNote "A4" -NoteLength 768 ),(New-BSStep -MusicNote "D5" -NoteLength 768)))
$HighSynth.Add(112, (""))
#####################################################################
$HighSynth.Add(113, (""))
$HighSynth.Add(114, (""))
$HighSynth.Add(115, (""))
$HighSynth.Add(116, (""))
#################################
$HighSynth.Add(117, (""))
$HighSynth.Add(118, (""))
$HighSynth.Add(119, (""))
$HighSynth.Add(120, (""))
#################################
$HighSynth.Add(121, ((New-BSStep -MusicNote "G4" -NoteLength 288 ),(New-BSStep -MusicNote "C5" -NoteLength 288 ),(New-BSStep -MusicNote "D5" -NoteLength 288)))
$HighSynth.Add(122, (""))
$HighSynth.Add(123, (""))
$HighSynth.Add(124, (""))
#################################
$HighSynth.Add(125, ((New-BSStep -MusicNote "G4" -NoteLength 288 ),(New-BSStep -MusicNote "B4" -NoteLength 288 ),(New-BSStep -MusicNote "D5" -NoteLength 288)))
$HighSynth.Add(126, (""))
$HighSynth.Add(127, (""))
$HighSynth.Add(128, (""))
#####################################################################
$HighSynth.Add(129, ((New-BSStep -MusicNote "E4" -NoteLength 1056 ),(New-BSStep -MusicNote "A4" -NoteLength 1056 ),(New-BSStep -MusicNote "C#5" -NoteLength 1056)))
$HighSynth.Add(130, (""))
$HighSynth.Add(131, (""))
$HighSynth.Add(132, (""))
#################################
$HighSynth.Add(133, (""))
$HighSynth.Add(134, (""))
$HighSynth.Add(135, (""))
$HighSynth.Add(136, (""))
#################################
$HighSynth.Add(137, (""))
$HighSynth.Add(138, (""))
$HighSynth.Add(139, (""))
$HighSynth.Add(140, (""))
#################################
$HighSynth.Add(141, ((New-BSStep -MusicNote "E4" -NoteLength 100 ),(New-BSStep -MusicNote "A4" -NoteLength 100 ),(New-BSStep -MusicNote "C#5" -NoteLength 100)))
$HighSynth.Add(142, (""))
$HighSynth.Add(143, ((New-BSStep -MusicNote "F4" -NoteLength 1248 ),(New-BSStep -MusicNote "B4" -NoteLength 1248 ),(New-BSStep -MusicNote "D5" -NoteLength 1248)))
$HighSynth.Add(144, (""))
####################################################################
$HighSynth.Add(145, (""))
$HighSynth.Add(146, (""))
$HighSynth.Add(147, (""))
$HighSynth.Add(148, (""))
#################################
$HighSynth.Add(149, (""))
$HighSynth.Add(150, (""))
$HighSynth.Add(151, (""))
$HighSynth.Add(152, (""))
#################################
$HighSynth.Add(153, (""))
$HighSynth.Add(154, (""))
$HighSynth.Add(155, (""))
$HighSynth.Add(156, (""))
#################################
$HighSynth.Add(157, ((New-BSStep -MusicNote "F4" -NoteLength 100 ),(New-BSStep -MusicNote "B4" -NoteLength 100 ),(New-BSStep -MusicNote "D5" -NoteLength 100)))
$HighSynth.Add(158, (""))
$HighSynth.Add(159, ((New-BSStep -MusicNote "A4" -NoteLength 1248 ),(New-BSStep -MusicNote "C5" -NoteLength 1248 ),(New-BSStep -MusicNote "E5" -NoteLength 1248)))
$HighSynth.Add(160, (""))
#####################################################################
$HighSynth.Add(161, (""))
$HighSynth.Add(162, (""))
$HighSynth.Add(163, (""))
$HighSynth.Add(164, (""))
#################################
$HighSynth.Add(165, (""))
$HighSynth.Add(166, (""))
$HighSynth.Add(167, (""))
$HighSynth.Add(168, (""))
#################################
$HighSynth.Add(169, (""))
$HighSynth.Add(170, (""))
$HighSynth.Add(171, (""))
$HighSynth.Add(172, (""))
#################################
$HighSynth.Add(173, ((New-BSStep -MusicNote "A4" -NoteLength 100 ),(New-BSStep -MusicNote "C5" -NoteLength 100 ),(New-BSStep -MusicNote "E5" -NoteLength 100)))
$HighSynth.Add(174, (""))
$HighSynth.Add(175, ((New-BSStep -MusicNote "G#4" -NoteLength 1728 ),(New-BSStep -MusicNote "B4" -NoteLength 1728 ),(New-BSStep -MusicNote "E5" -NoteLength 1728)))
$HighSynth.Add(176, (""))
#####################################################################



####### PATTERNS
$MainDrumPattern = New-BSPattern -Name "Main Drums" -Instrument "Drum" -Notes $DrumSteps
$MainDrumPatternAlt1 = New-BSPattern -Name "Main Drums" -Instrument "Drum" -Notes $DrumStepsAlt1

$BassPattern =  New-BSPattern -Name "BigBass" -Instrument "Bass" -Notes $BassSteps
$BassPattern2 =  New-BSPattern -Name "DunDunDunDuunnn2" -Instrument "Bass" -Notes $BassStepsMild
$BassPattern3 =  New-BSPattern -Name "DunDunDunDuunnn3" -Instrument "Bass" -Notes $BassStepsMild2
$BassPatternBuildUp = New-BSPattern -Name "BuildUp" -Instrument "Bass" -Notes $BassStepsBuildUp

$SynthLongStrings1 = New-BSPattern -Name "TheStrings" -Instrument "Synth" -Notes $LongStrings1
$SynthLongStrings2 = New-BSPattern -Name "TheStrings" -Instrument "Synth" -Notes $LongStrings2


$EPianoPattern1 = New-BSPattern -Name "ThePiano1" -Instrument "Synth" -Notes $EPiano1
$HighSynthPattern1  = New-BSPattern -Name "High Synth" -Instrument "Synth" -Notes $HighSynth








####### SEQUENCES
$DrumSequence = @(
    (New-BSSequencePattern -FirstStep 1  -LastStep 144 -Pattern $MainDrumPattern)
    (New-BSSequencePattern -FirstStep 145  -LastStep 160 -Pattern $MainDrumPatternAlt1)
    (New-BSSequencePattern -FirstStep 161  -LastStep 592 -Pattern $MainDrumPattern)
    (New-BSSequencePattern -FirstStep 593  -LastStep 608 -Pattern $MainDrumPatternAlt1)
    (New-BSSequencePattern -FirstStep 609  -LastStep 704 -Pattern $MainDrumPattern)

)

$BassSequence = @(
        (New-BSSequencePattern -FirstStep 33 -LastStep 160 -Pattern $BassPattern)               # 8 Hook Bass
        (New-BSSequencePattern -FirstStep 161 -LastStep 496 -Pattern $BassPattern2)             # 14 Normal Bass
        (New-BSSequencePattern -FirstStep 497 -LastStep 576 -Pattern $BassPatternBuildUp)       # 14 Special Bass
        (New-BSSequencePattern -FirstStep 577 -LastStep 704 -Pattern $BassPattern3)             # 8 Bass Patern 3
        #(New-BSSequencePattern -FirstStep 737 -LastStep 960 -Pattern $BassPattern4)             # 14 Bass Pattern 4  TODO
        #(New-BSSequencePattern -FirstStep 961 -LastStep 1184 -Pattern $BassPattern4)            # 14 Bass Pattern 4     TODO
        #(New-BSSequencePattern -FirstStep 1185 -LastStep 1408 -Pattern $BassPatternBuildUp)     # 14 
        #(New-BSSequencePattern -FirstStep 1409 -LastStep 1536 -Pattern $BassPattern3)           # 8  Bass Patern 3
        #(New-BSSequencePattern -FirstStep 1537 -LastStep 1664 -Pattern $BassPattern)            # 8 Hook Bass
        #(New-BSSequencePattern -FirstStep 1665 -LastStep 1920 -Pattern $BassPattern3)           # 16 Bass Patern 
)

$SynthSequence = @(
    #(New-BSSequencePattern -FirstStep 33 -LastStep 160 -Pattern $SynthLongStrings1) 
    #(New-BSSequencePattern -FirstStep 161 -LastStep 320 -Pattern $SynthLongStrings2)

    (New-BSSequencePattern -FirstStep 145 -LastStep 368 -Pattern $EPianoPattern1)           # 14 - 224 steps
    (New-BSSequencePattern -FirstStep 385 -LastStep 560 -Pattern $HighSynthPattern1)           # 176 steps


)


New-BSSong -Name $Name -BPM $BPM -TotalStepsToPlay $TotalStepsToPlay -DrumSequence $DrumSequence -BassSequence $BassSequence -SynthSequence $SynthSequence


