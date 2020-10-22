#Madonna - Papa Don't Preach
$Name = "Papa Don't Preach"
$BPM = 122
$TotalStepsToPlay = 96

[hashtable]$DrumSteps = @{ }
$DrumSteps.Add(1, ("Kick"))
$DrumSteps.Add(2, (""))
$DrumSteps.Add(3, ("Kick"))
$DrumSteps.Add(4, (""))
#################################
$DrumSteps.Add(5, ("Snare","Clap"))
$DrumSteps.Add(6, (""))
$DrumSteps.Add(7, (""))
$DrumSteps.Add(8, (""))
#################################
$DrumSteps.Add(9, ("Kick"))
$DrumSteps.Add(10, (""))
$DrumSteps.Add(11, (""))
$DrumSteps.Add(12, (""))
#################################
$DrumSteps.Add(13, ("Snare","Clap"))
$DrumSteps.Add(14, (""))
$DrumSteps.Add(15, (""))
$DrumSteps.Add(16, (""))
#################################
$DrumSteps.Add(17, ("Kick"))
$DrumSteps.Add(18, (""))
$DrumSteps.Add(19, ("Kick"))
$DrumSteps.Add(20, (""))
#################################
$DrumSteps.Add(21, ("Snare","Clap"))
$DrumSteps.Add(22, (""))
$DrumSteps.Add(23, (""))
$DrumSteps.Add(24, (""))
#################################
$DrumSteps.Add(25, ("Kick"))
$DrumSteps.Add(26, (""))
$DrumSteps.Add(27, (""))
$DrumSteps.Add(28, (""))
#################################
$DrumSteps.Add(29, ("Snare"))
$DrumSteps.Add(30, (""))
$DrumSteps.Add(31, (""))
$DrumSteps.Add(32, (""))



[hashtable]$BassSteps = @{ }
$BassSteps.Add(1, ("F3"))
$BassSteps.Add(2, (""))
$BassSteps.Add(3, ("F3"))
$BassSteps.Add(4, (""))
#################################
$BassSteps.Add(5, ("C4"))
$BassSteps.Add(6, (""))
$BassSteps.Add(7, ("F3"))
$BassSteps.Add(8, (""))
#################################
$BassSteps.Add(9, ("A#3"))
$BassSteps.Add(10, (""))
$BassSteps.Add(11, ("F3"))
$BassSteps.Add(12, (""))
#################################
$BassSteps.Add(13, ("C4"))
$BassSteps.Add(14, (""))
$BassSteps.Add(15, ("G#3"))
$BassSteps.Add(16, (""))
#################################
$BassSteps.Add(17, ("C4"))
$BassSteps.Add(18, (""))
$BassSteps.Add(19, ("F3"))
$BassSteps.Add(20, (""))
#################################
$BassSteps.Add(21, ("F3"))
$BassSteps.Add(22, (""))
$BassSteps.Add(23, ("C4"))
$BassSteps.Add(24, (""))
#################################
$BassSteps.Add(25, ("F3"))
$BassSteps.Add(26, (""))
$BassSteps.Add(27, ("A#3"))
$BassSteps.Add(28, (""))
#################################
$BassSteps.Add(29, ("F3"))
$BassSteps.Add(30, (""))
$BassSteps.Add(31, ("G#3"))
$BassSteps.Add(32, (""))
#################################
$BassSteps.Add(33, ("F3"))
$BassSteps.Add(34, (""))
$BassSteps.Add(35, ("F3"))
$BassSteps.Add(36, (""))
################################# 
$BassSteps.Add(37, ("F3"))
$BassSteps.Add(38, (""))
$BassSteps.Add(39, ("C4"))
$BassSteps.Add(40, (""))
#################################
$BassSteps.Add(41, ("F3"))
$BassSteps.Add(42, (""))
$BassSteps.Add(43, ("A#3"))
$BassSteps.Add(44, (""))
#################################
$BassSteps.Add(45, ("F3"))
$BassSteps.Add(46, (""))
$BassSteps.Add(47, ("G#3"))
$BassSteps.Add(48, (""))
#################################
$BassSteps.Add(49, ("C4"))
$BassSteps.Add(50, (""))
$BassSteps.Add(51, ("F3"))
$BassSteps.Add(52, (""))
#################################
$BassSteps.Add(53, ("F3"))
$BassSteps.Add(54, (""))
$BassSteps.Add(55, ("C4"))
$BassSteps.Add(56, (""))
#################################
$BassSteps.Add(57, ("F3"))
$BassSteps.Add(58, (""))
$BassSteps.Add(59, ("A#3"))
$BassSteps.Add(60, (""))
#################################
$BassSteps.Add(61, ("F3"))
$BassSteps.Add(62, (""))
$BassSteps.Add(63, ("G#3"))
$BassSteps.Add(64, (""))
#>

[hashtable]$SynthSteps = @{ }


$DrumSequence1 = [PSCustomObject]@{
    Name = "PapaDrums"
    Type = "drum"
    Pattern = $DrumSteps 
}

$BassSequence1 = [PSCustomObject]@{
    Name = "PapaBass"
    Type = "bass"
    Pattern = $BassSteps 
}


[hashtable]$SongPatternSequence = @{ }
$SongPatternSequence.Add(1, ($DrumSequence1))
$SongPatternSequence.Add(33, ($BassSequence1))


return [PSCustomObject]@{
    Name = $Name
    BPM = $BPM
    TotalStepsToPlay = $TotalStepsToPlay
    SongPatternSequence = $SongPatternSequence
    DrumPatterns = ($DrumSequence1,$DrumSequence2)
    BassPatterns = ($BassSequence1)
    SynthPatterns = ($null);
}