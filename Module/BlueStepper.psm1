


Function Invoke-BSPlayBack {
    param (
        $Song,
        $DrumPattern,
        $BassPattern,
        $SynthPattern,
        $StartStep = 1
    )

    #Defaults   # todo - make this a Seqeuncer Settings PS Function
    $Global:BPM = $Song.BPM

    # 4 Steps in a Beat
    # 120 BPM = 480 Steps a Minute
    # 480 Steps a minute = 480 Steps per 60000 MS
    # 60000 MS / 480 = 125MS STEP WAIT INTERVAL

    # MSPERMIN / 4/4 Time Sig
    $Global:StepInterval = 60000 / ($BPM * 4)

    # 1 step interval at 120 bpm
    $Date = Get-Date
    $DateResolution = $Date.AddMilliseconds(1)
    $DateInterval = $Date.AddMilliseconds($Global:StepInterval)  # BPM

    $StepTimer = New-Object MultimediaTimer.Timer

    $global:CurrentPlayBackStep = 1
    $lastStep = 0

    $StepTimer.Interval = New-TimeSpan -Start $Date -End $DateInterval
    $StepTimer.Resolution = New-TimeSpan -Start $Date -End $DateResolution

    Unregister-Event -SourceIdentifier Timer.Output -ErrorAction Ignore

    #Create the event subscription
    Register-ObjectEvent -InputObject $StepTimer -EventName Elapsed -SourceIdentifier Timer.Output -Action {
        $Global:CurrentPlayBackStep++
    }
    

    $Global:ArpPattern = "UP_1"

    $Global:CurrentPlayBackStep = $StartStep
    $CurrentDrumPattern_Step = 1
    $CurrentBassPattern_Step = 1
    $CurrentSynthPattern_Step = 1
    $CurrentDrumPattern = $null
    $CurrentBassPattern = $null
    $CurrentSynthPattern = $null
    $DrumStepNotesToPlay = $null
    $BassStepNotesToPlay = $null
    $SynthStepNotesToPlay = $null
    $PlayBackTimingReport = @{ }

    if ($null -ne $Song) {
        Set-BSTiming -BPM $Song.BPM
        $PlayBackSequence = $Song.SongPatternSequence
        $DrumSequences = $Song.SongDrumSequence
        $BassSequences = $Song.SongBassSequence
        $SynthSequences = $Song.SongSynthSequence
        $TotalStepsToPlay = $Song.TotalStepsToPlay

        Write-Host ("Playing: $($Song.Name) - $($Song.BPM) BPM")

        #Starting Drum Pattern
        $CurrentDrumPattern = $DrumSequences | Where { ($_.FirstStep -eq $StartStep) }
        #Starting Bass Pattern
        $CurrentBassPattern = $BassSequences | Where { ($_.FirstStep -eq $StartStep) }
        #Starting Synth Pattern
        $CurrentSynthPattern = $SynthSequences | Where { ($_.FirstStep -eq $StartStep) }
                
        if ($null -ne $CurrentDrumPattern) {
            $DrumStepNotesToPlay = $CurrentDrumPattern.Pattern.Pattern[1]
        }
        if ($null -ne $CurrentBassPattern) {
            $BassStepNotesToPlay = $CurrentBassPattern.Pattern.Pattern[1]
        }
        if ($null -ne $CurrentSynthPattern) {
            $SynthStepNotesToPlay = $CurrentSynthPattern.Pattern.Pattern[1]
        }
    
    }
    else {
        $CurrentDrumPattern = $DrumPattern
        $CurrentBassPattern = $BassPattern
        $CurrentSynthPattern = $SynthPattern
        $TotalStepsToPlay = 128
    }

    Write-Host "Playback: Started!" -ForegroundColor Green

    # Setup Note Operation Runspaces
    Invoke-BSSetupBlockingCollections
    
    Start-Sleep -Seconds 1.5

    $StepTimer.Start()

    Do {
        #WE ARE LIVE 

        # Play the Notes
        # Then Afterwards do all the cleanup Sequence the next set
 
        if($lastStep -ne $global:CurrentPlayBackStep )
        {
            
            #Change Drum Pattern
            $CurrentDrumPattern = $DrumSequences | Where { (($Global:CurrentPlayBackStep) -ge $_.FirstStep) -and (($Global:CurrentPlayBackStep) -le $_.LastStep) }
            #Change Bass Pattern
            $CurrentBassPattern = $BassSequences | Where { (($Global:CurrentPlayBackStep) -ge $_.FirstStep) -and (($Global:CurrentPlayBackStep) -le $_.LastStep) }
            #Change Synth Pattern
            $CurrentSynthPattern = $SynthSequences | Where { (($Global:CurrentPlayBackStep) -ge $_.FirstStep) -and (($Global:CurrentPlayBackStep) -le $_.LastStep) }
        
            if ($null -ne $CurrentDrumPattern) {
                $DrumStepNotesToPlay = $CurrentDrumPattern.Pattern.Pattern[$CurrentDrumPattern_Step]
            }
            else {
                $DrumStepNotesToPlay = $null
            }
            if ($null -ne $CurrentBassPattern) {
                $BassStepNotesToPlay = $CurrentBassPattern.Pattern.Pattern[$CurrentBassPattern_Step]
            }
            else {
                $BassStepNotesToPlay = $null
            }
            if ($null -ne $CurrentSynthPattern) {
                $SynthStepNotesToPlay = $CurrentSynthPattern.Pattern.Pattern[$CurrentSynthPattern_Step]
            }
            else {
                $SynthStepNotesToPlay = $null
            }

            if ($Global:BSDebugMode -eq $true) {
                $Message = "STEP: " + ($Global:CurrentPlayBackStep) + " - " 
                if($null -ne $DrumStepNotesToPlay.MusicNote){$Message += "Drum: " + ($DrumStepNotesToPlay.MusicNote) + " - "}   
                if($null -ne $BassStepNotesToPlay.MusicNote){$Message += "Bass: " + ($BassStepNotesToPlay.MusicNote) + " - " }   
                if($null -ne $SynthStepNotesToPlay.MusicNote){$Message += "Synth: " + ($SynthStepNotesToPlay.MusicNote) }  
                Write-Host $Message
            }

            # NEW STEP TO PROCESS
            $lastStep = $global:CurrentPlayBackStep
        
            #DRUMS
            
            Invoke-BSPlayStepNotes -DrumNotes $DrumStepNotesToPlay -BassNotes $BassStepNotesToPlay -SynthNotes $SynthStepNotesToPlay

           

            if ($null -ne $CurrentDrumPattern) {
                $CurrentDrumPattern_Step ++
            }
            if ($null -ne $CurrentBassPattern) {
                $CurrentBassPattern_Step ++
            }
            if ($null -ne $CurrentSynthPattern) {
                $CurrentSynthPattern_Step ++
            }

                   

            if ($CurrentDrumPattern_Step -gt $CurrentDrumPattern.Pattern.Pattern.Count) {
                #Reset to Step 1 in the Pattern if at the end of the pattern
                $CurrentDrumPattern_Step = 1
            }
            if ($CurrentBassPattern_Step -gt $CurrentBassPattern.Pattern.Pattern.Count) {
                #Reset to Step 1 in the Pattern if at the end of the pattern
                $CurrentBassPattern_Step = 1
            }
            if ($CurrentSynthPattern_Step -gt $CurrentSynthPattern.Pattern.Pattern.Count) {
                #Reset to Step 1 in the Pattern if at the end of the pattern
                $CurrentSynthPattern_Step = 1
            }
            
            

        
        }

    } While ($TotalStepsToPlay -gt $Global:CurrentPlayBackStep)

    Write-Host "Playback Completed" -ForegroundColor Cyan
      
    $StepTimer.Stop()
    Unregister-Event -SourceIdentifier Timer.Output -ErrorAction Ignore
    
    # Close RunSpaces
    Foreach ($Runspace in $Global:NoteRunspaces) {
        
        $Runspace.PowerShell.EndInvoke($Runspace.Handler)
        $Runspace.PowerShell.Dispose()
    }
    If ($null -ne $NoteOperationsPool) {
        $NoteOperationsPool.Dispose()
    }
 
}

function Invoke-BSPlayNoteOnOff {
    param (
        $MidiNumber = $null,
        $NoteLength = 20, # TODO Default Calculated NoteLength for a 16th step note in 4/4 at song BPM
        $Velocity = 100,
        $MidiChannel = $null,
        $OutputPort = $null,
        $NoteOffObject
    )
    
    if ($null -ne $MidiNumber -and $MidiNumber -ne "") {
    
        Send-MidiNoteOnMessage -Note $MidiNumber -Velocity $Velocity -Channel $MidiChannel -Port $OutputPort

        #### Queue Note Off
        if ($NoteLength -ne 0) {
            # TODO - NEed to pass in QUEUE TIME SO Note off can compare note time to current
                  Invoke-BSQueueNoteOff -MidiNumber $MidiNumber -Channel $MidiChannel -Velocity $Velocity -Port $OutputPort -NoteLength $NoteLength -NoteOffObject $NoteOffObject
        }
        
        $MidiNumber = $null
        $NoteOffObject = $null

    }


}


function Set-BSTiming {
    param (
        [Parameter()] 
        $BPM = 120
    )
    
    $Global:BPM = $BPM

    # 120 BPM is 

    #16th Steps - in 4/4 is 

    # 1 Second = 2 Beats and 8 steps

    # 4/4  - is 4 beats in a bar
    # my BAR has 16 Steps


    # 4 Steps in a Beat
    # 120 BPM = 480 Steps a Minute
    # 480 Steps a minute = 480 Steps per 60000 MS
    # 60000 MS / 480 = 125MS STEP WAIT INTERVAL

    # MSPERMIN / 4/4 Time Sig
    $Global:StepInterval = 60000 / ($Global:BPM * 4)

    
    # Timing Calculations
    $Global:TotalStepsPerMinute = $Global:BPM * 4 # we could do something other than 4/4 time signature but nahhh
    $Global:TimePerStep = (60/$Global:TotalStepsPerMinute * 1000)

    $Global:ClockCalcsPerStep = 6   #6 MIDI Clocks in a 16th - assuming 22ppqm


}


function Start-BSPlayMode {
    $Global:PlayMode = $true
    
    # TODO What Gets Started
    Send-MidiStartMessage -Port $Global:BSBassOutputPort

}


function Stop-BSPlayMode {
    $Global:PlayMode = $false
    Send-MidiStopMessage -Port $Global:BSBassOutputPort
}

function Set-BSSequencerDebugMode {
    param (
        $EnableDebug
    )

    $Global:BSDebugMode = $EnableDebug
}




function Invoke-SleepTesting {
    $Total = Measure-Command {
        $Inside = Measure-Command {
            
            $StopWatch = New-Object System.Diagnostics.Stopwatch
            $StopWatch1 = New-Object System.Diagnostics.Stopwatch
          
            $StopWatch1.Start()
            
            $StopWatch1

            $StopWatch = New-Object System.Diagnostics.Stopwatch
            $StopWatch.Reset()
            $StopWatch.Start()
            [System.Threading.Thread]::Sleep(10)
            #Start-Sleep -Milliseconds 10
            $StopWatch
        }
    }
    $InsideTMS = ($Inside.TotalMilliseconds - 10)
    $TotalTMS = ($Total.TotalMilliseconds - 10)
    Write-Host "Waiting for 10ms took an extra: ($InsideTMS)Ms"
    WRite-Host "Measuring a 10ms took and extra ($TotalTMS)Ms"
    Write-Host "Ideally you are 5% or less... ¯\_(ツ)_/¯"

}


Function Invoke-BSSetupBlockingCollections {

    $MidiModulePath = (Get-Module PeteBrown.PowerShellMidi).Path

    $RunSpaceScript = {
        Param(
            [System.Collections.Concurrent.BlockingCollection[PSObject]]
            $NoteStepQueue,
            $MidiModulePath
        )
        
        #Load Midi Module
        Import-Module $MidiModulePath -Force
     
        foreach ($StepNote in $NoteStepQueue.GetConsumingEnumerable()) {
            [System.Threading.Thread]::Sleep($StepNote.NoteLength)
            Send-MidiNoteOffMessage -Note $StepNote.MidiNumber -Channel $StepNote.Channel -Velocity $StepNote.Velocity -Port $StepNote.Port
        }
    }

    $Global:NoteOffQueue = [System.Collections.Concurrent.BlockingCollection[PSObject]]::new(
        [System.Collections.Concurrent.ConcurrentQueue[PSObject]]::new()
    )
    $RunspacePool = [runspacefactory]::CreateRunspacePool(1, 8)
    $null = $RunspacePool.Open()
    $Runspace = [PowerShell]::Create()
    $Runspace.RunspacePool = $RunspacePool
    $null = $Runspace.AddScript($RunSpaceScript).
    AddArgument($Global:NoteOffQueue).
    AddArgument($MidiModulePath)
    $null = $Runspace.BeginInvoke()


}

Function Invoke-BSQueueNoteOff {

    param (
        $MidiNumber,
        $Channel,
        $Velocity,
        $Port,
        $NoteLength,
        $NoteOffObject = $null
    )

    #TODO - IDK about creating a PSCUSTOM OBJECT IN REALTIME - might be too slow...
    if($null -ne $NoteOffObject)
    {
        $NoteOffObject.Channel = $Channel
        $NoteOffObject.Port = $Port
        $NoteOffQueue.Add($NoteOffObject)
    }
    else {
        $InstrumentNoteToQueue = [PSCustomObject]@{
            MidiNumber = $MidiNumber
            Channel  = $Channel
            Velocity = $Velocity
            Port     = $Port
            NoteLength = $NoteLength
        }
        $NoteOffQueue.Add($InstrumentNoteToQueue)
    }
}

Function New-BSMidiOutputDevice {
    param (
        $DeviceID = "test"
    )
 
    $OutputPort = Get-MidiOutputPort -Id $DeviceID
    #TODO Set Midi Output Name

    return [PSCustomObject]@{
        DeviceName = $DeviceName
        DeviceID   = $DeviceID
        OutputPort = $OutputPort
    }

}

Function New-BSDrumMachine {
    #TODO - Drum machiens are different - allow definition of what midi signals = what drum note   
}

Function New-BSInstrument {
    param (
        [String]
        $Name,
        [String]
        [ValidateSet("Drum", "Bass", "Synth")]
        $Instrument,
        $MidiOutputDevice,
        $MidiChannel
    )

    return [PSCustomObject]@{
        Name        = $Name
        Instrument  = $Instrument
        MidiOutput  = $MidiOutputDevice
        MidiChannel = $MidiChannel
    }
}


Function Invoke-BSPlayPatternStepNotes {
    param (
        $CurrentPatterns,
        $CurrentDrumPattern_Step,
        $CurrentBassPattern_Step,
        $CurrentSynthPattern_Step
    )
    

    $CurrentPatterns | ForEach-Object
    {
        if ($_.Instrument -eq "drum") {
            Invoke-BSPlayStepNotes -DrumNotes $CurrentPatterns
        }
        if ($_.Instrument -eq "base") {

        }
        
    }
    
}

Function Invoke-BSPlayStepNotes {
    param (
        $DrumNotes,
        $BassNotes,
        $SynthNotes
    )
    
    
    #NOTE: all these $null -ne look dumb before the ForEAch but it's a notable performance boost..
    If ($null -ne $DrumNotes -and "" -ne $DrumNotes) {  
        #$DrumNotes
           
        $DrumNotes | ForEach-Object {
            Invoke-BSPlayNoteOnOff -MidiNumber $_.MidiNumber -Velocity $_.Velocity -NoteLength $_.NoteLength -MidiChannel $Global:BSDrumMidiChannel -OutputPort $Global:BSDrumOutputPort -NoteOffObject $_.NoteOffObject
        }
            
    }
             
    If ($null -ne $BassNotes -and "" -ne $BassNotes) {
    
        $BassNotes | ForEach-Object {
            Invoke-BSPlayNoteOnOff -MidiNumber $_.MidiNumber -Velocity $_.Velocity -NoteLength $_.NoteLength -MidiChannel $Global:BSBassMidiChannel -OutputPort $Global:BSBassOutputPort -NoteOffObject $_.NoteOffObject
        }

    }
        
    If ($null -ne $SynthNotes -and "" -ne $SynthNotes) {

        $SynthNotes | ForEach-Object {
            Invoke-BSPlayNoteOnOff -MidiNumber $_.MidiNumber -Velocity $_.Velocity -NoteLength $_.NoteLength -MidiChannel $Global:BSSynth1MidiChannel -OutputPort $Global:BSSynth1OutputPort -NoteOffObject $_.NoteOffObject
        }
       
    }



        
    
    
}

Function Set-BSArpPattern {
    
    param (
        [Parameter()]
        [ValidateSet("UP_1", "DOWN_1")]
        $Pattern
    )

    #ArpPattern
    # "UP_1","DOWN_1","DOWN_AND_UP","UP_2","DOWN_2","UP_3","DOWN_3","RANDOM"
    $Global:ArpPattern = $Pattern
    
    
}

Function New-BSPattern {
    
    param (
        $Name = "MyPattern",
        [Parameter(Position = 1, mandatory = $true)]
        [ValidateSet("drum", "bass", "synth", "Drum", "Bass", "Synth")]
        $Instrument,
        [Parameter(Position = 2, mandatory = $true)]
        $Notes = @()
    
    )
    
    return [PSCustomObject]@{
        Name       = $Name
        Instrument = $Instrument.ToLower()
        Pattern    = $Notes
        StepCount  = $Notes.Count
    }

}

Function New-BSSequence {
    param (
        [Parameter(Position = 0, mandatory = $true)]
        $SequencePatterns
    )
  
    $SongPatternSequence = $SequencePatterns 
    
    <#
    [hashtable]$SongPatternSequence = @{ }
    $SequencePatterns | ForEach-Object{
        $SongPatternSequence.Add($_.StartingStep, $_.Pattern)
    }
    #>

    Return $SongPatternSequence



}

Function New-BSSequencePattern {
    param (
        [Parameter(mandatory = $true)]
        $FirstStep,
        $LastStep,
        [Parameter(mandatory = $true)]
        $Pattern
    )

    [int]$TotalPatternSteps = ($LastStep - $FirstStep) + 1

    $LastStep | ForEach-Object { if ($_ % 2 -ne 0 ) { Write-Warning "Last Step: $_ for: $($Pattern.Name) Should be an even number!" } }
    $LastStep | ForEach-Object { if ($_ % 4 -ne 0 ) { Write-Warning "Last Step: $_ for: $($Pattern.Name)should be divisible by 4!" } }
    $FirstStep | ForEach-Object { if ($_ % 2 -ne 1) { Write-Warning "First Step $_ for: $($Pattern.Name) Should be an ODD number!" } }
    
    { if ($TotalPatternSteps%2 -eq 0) { Write-Warning ("Total Pattern Steps for $($Pattern.Name) should be an EVEN number - was $TotalPatternSteps!") } }

    return [PSCustomObject]@{
        FirstStep = $FirstStep
        LastStep  = $LastStep
        Pattern   = $Pattern
    }

}

Function New-BSSong {

    param (
        [Parameter(Position = 0, mandatory = $true)]
        $Name,

        [Parameter(Position = 1, mandatory = $true)]
        $BPM,

        [Parameter(Position = 2, mandatory = $true)]
        $TotalStepsToPlay,

        $Sequence,
        $DrumSequence,
        $BassSequence,
        $SynthSequence
    )

    return [PSCustomObject]@{
        Name                = $Name
        BPM                 = $BPM
        TotalStepsToPlay    = $TotalStepsToPlay
        SongPatternSequence = $Sequence
        SongDrumSequence    = $DrumSequence
        SongBassSequence    = $BassSequence
        SongSynthSequence   = $SynthSequence
    }
    

}

function Set-BSActiveInstrument {
    param (
        [Parameter(Position = 0, mandatory = $true)]
        $Instrument
    )

    $Instrument | ForEach-Object {
        If ($_.Instrument.ToLower() -eq "drum") {
            $Global:BSDrumMidiChannel = $_.MidiChannel
            $Global:BSDrumOutputPort = $_.MidiOutput.OutputPort
        }
        If ($_.Instrument.ToLower() -eq "bass") {
            $Global:BSBassMidiChannel = $_.MidiChannel
            $Global:BSBassOutputPort = $_.MidiOutput.OutputPort
        }
        If ($_.Instrument.ToLower() -eq "synth") {
            $Global:BSSynth1MidiChannel = $_.MidiChannel
            $Global:BSSynth1OutputPort = $_.MidiOutput.OutputPort
        }
    }
}


Function New-BSStep {
    param (
        

        [Parameter(Position = 0)]
        [ValidateSet("A0", "A#0", "B0", "C1", "C#1", "D1", "D#1", "E1", "F1", "F#1", "G1", "G#1", "A1", "A#1", "B1", "C2", "C#2", "D2", "D#2", "E2", "F2", "F#2", "G2", "G#2", "A2", "A#2", "B2", "C3", "C#3", "D3", "D#3", "E3", "F3", "F#3", "G3", "G#3", "A3", "A#3", "B3", "C4", "C#4", "D4", "D#4", "E4", "F4", "F#4", "G4", "G#4", "A4", "A#4", "B4", "C5", "C#5", "D5", "D#5", "E5", "F5", "F#5", "G5", "G#5", "A5", "A#5", "B5", "C6", "C#6", "D6", "D#6", "E6", "F6", "F#6", "G6", "G#6", "A6", "A#6", "B6", "C7", "C#7", "D7", "D#7", "E7", "F7", "F#7", "G7", "G#7", "A7", "A#7", "B7", "C8", "C#8", "D8", "D#8", "E8", "F8", "F#8", "G8", "G#8", "A8", "A#8", "B8", "C9", "C#9", "D9", "D#9", "E9", "F9", "F#9", "G9", "Kick", "Snare", "Clap", "ClosedHat", "OpenHat", "TomHigh", "TomLow", "Cymbal", "Cowbell", "FMDrum")]
        $MusicNote,

        [Parameter(Position = 1)]
        [ValidateSet("21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79", "80", "81", "82", "83", "84", "85", "86", "87", "88", "89", "90", "91", "92", "93", "94", "95", "96", "97", "98", "99", "100", "101", "102", "103", "104", "105", "106", "107", "108", "109", "110", "111", "112", "113", "114", "115", "116", "117", "118", "119", "120", "121", "122", "123", "124", "125", "126", "127")]
        $MidiNumber,

        [Parameter(Position = 2)]
        $Velocity = 100,

        [Parameter(Position = 3)]
        $NoteLength = 20
        
    )

    #Todo Drum Hits don't need lengths... is this really true though?
    if("Kick", "Snare", "Clap", "ClosedHat", "OpenHat", "TomHigh", "TomLow", "Cymbal", "Cowbell", "FMDrum" -contains $MusicNote)
    {
        $NoteLength = 0
    }

    if ($null -ne $MusicNote -and $null -eq $MidiNumber) {
        switch ($MusicNote) {
            "A0" { $MidiNumber = 21 }
            "A#0" { $MidiNumber = 22 }
            "B0" { $MidiNumber = 23 }
            "C1" { $MidiNumber = 24 }
            "C#1" { $MidiNumber = 25 }
            "D1" { $MidiNumber = 26 }
            "D#1" { $MidiNumber = 27 }
            "E1" { $MidiNumber = 28 }
            "F1" { $MidiNumber = 29 }
            "F#1" { $MidiNumber = 30 }
            "G1" { $MidiNumber = 31 }
            "G#1" { $MidiNumber = 32 }
            "A1" { $MidiNumber = 33 }
            "A#1" { $MidiNumber = 34 }
            "B1" { $MidiNumber = 35 }
            "C2" { $MidiNumber = 36 }
            "C#2" { $MidiNumber = 37 }
            "D2" { $MidiNumber = 38 }
            "D#2" { $MidiNumber = 39 }
            "E2" { $MidiNumber = 40 }
            "F2" { $MidiNumber = 41 }
            "F#2" { $MidiNumber = 42 }
            "G2" { $MidiNumber = 43 }
            "G#2" { $MidiNumber = 44 }
            "A2" { $MidiNumber = 45 }
            "A#2" { $MidiNumber = 46 }
            "B2" { $MidiNumber = 47 }
            "C3" { $MidiNumber = 48 }
            "C#3" { $MidiNumber = 49 }
            "D3" { $MidiNumber = 50 }
            "D#3" { $MidiNumber = 51 }
            "E3" { $MidiNumber = 52 }
            "F3" { $MidiNumber = 53 }
            "F#3" { $MidiNumber = 54 }
            "G3" { $MidiNumber = 55 }
            "G#3" { $MidiNumber = 56 }
            "A3" { $MidiNumber = 57 }
            "A#3" { $MidiNumber = 58 }
            "B3" { $MidiNumber = 59 }
            "C4" { $MidiNumber = 60 }
            "C#4" { $MidiNumber = 61 }
            "D4" { $MidiNumber = 62 }
            "D#4" { $MidiNumber = 63 }
            "E4" { $MidiNumber = 64 }
            "F4" { $MidiNumber = 65 }
            "F#4" { $MidiNumber = 66 }
            "G4" { $MidiNumber = 67 }
            "G#4" { $MidiNumber = 68 }
            "A4" { $MidiNumber = 69 }
            "A#4" { $MidiNumber = 70 }
            "B4" { $MidiNumber = 71 }
            "C5" { $MidiNumber = 72 }
            "C#5" { $MidiNumber = 73 }
            "D5" { $MidiNumber = 74 }
            "D#5" { $MidiNumber = 75 }
            "E5" { $MidiNumber = 76 }
            "F5" { $MidiNumber = 77 }
            "F#5" { $MidiNumber = 78 }
            "G5" { $MidiNumber = 79 }
            "G#5" { $MidiNumber = 80 }
            "A5" { $MidiNumber = 81 }
            "A#5" { $MidiNumber = 82 }
            "B5" { $MidiNumber = 83 }
            "C6" { $MidiNumber = 84 }
            "C#6" { $MidiNumber = 85 }
            "D6" { $MidiNumber = 86 }
            "D#6" { $MidiNumber = 87 }
            "E6" { $MidiNumber = 88 }
            "F6" { $MidiNumber = 89 }
            "F#6" { $MidiNumber = 90 }
            "G6" { $MidiNumber = 91 }
            "G#6" { $MidiNumber = 92 }
            "A6" { $MidiNumber = 93 }
            "A#6" { $MidiNumber = 94 }
            "B6" { $MidiNumber = 95 }
            "C7" { $MidiNumber = 96 }
            "C#7" { $MidiNumber = 97 }
            "D7" { $MidiNumber = 98 }
            "D#7" { $MidiNumber = 99 }
            "E7" { $MidiNumber = 100 }
            "F7" { $MidiNumber = 101 }
            "F#7" { $MidiNumber = 102 }
            "G7" { $MidiNumber = 103 }
            "G#7" { $MidiNumber = 104 }
            "A7" { $MidiNumber = 105 }
            "A#7" { $MidiNumber = 106 }
            "B7" { $MidiNumber = 107 }
            "C8" { $MidiNumber = 108 }
            "C#8" { $MidiNumber = 109 }
            "D8" { $MidiNumber = 110 }
            "D#8" { $MidiNumber = 111 }
            "E8" { $MidiNumber = 112 }
            "F8" { $MidiNumber = 113 }
            "F#8" { $MidiNumber = 114 }
            "G8" { $MidiNumber = 115 }
            "G#8" { $MidiNumber = 116 }
            "A8" { $MidiNumber = 117 }
            "A#8" { $MidiNumber = 118 }
            "B8" { $MidiNumber = 119 }
            "C9" { $MidiNumber = 120 }
            "C#9" { $MidiNumber = 121 }
            "D9" { $MidiNumber = 122 }
            "D#9" { $MidiNumber = 123 }
            "E9" { $MidiNumber = 124 }
            "F9" { $MidiNumber = 125 }
            "F#9" { $MidiNumber = 126 }
            "G9" { $MidiNumber = 127 }
            "Kick" { $MidiNumber = 36 } # TODO Arturia Drumbrute Defaults - need to set via cmdlet
            "Snare" { $MidiNumber = 37 }
            "Clap" { $MidiNumber = 38 }
            "ClosedHat" { $MidiNumber = 43 }
            "OpenHat" { $MidiNumber = 44 }
            "TomHigh" { $MidiNumber = 39 }
            "TomLow" { $MidiNumber = 40 }
            "Cymbal" { $MidiNumber = 41 }
            "Cowbell" { $MidiNumber = 42 }
            "FMDrum" { $MidiNumber = 45 }
        }
    }

    if ($null -ne $MidiNumber -and $null -eq $MusicNote) {
        switch ($MidiNumber) {
            21 { $MusicNote = "A0" }
            22 { $MusicNote = "A#0" }
            23 { $MusicNote = "B0" }
            24 { $MusicNote = "C1" }
            25 { $MusicNote = "C#1" }
            26 { $MusicNote = "D1" }
            27 { $MusicNote = "D#1" }
            28 { $MusicNote = "E1" }
            29 { $MusicNote = "F1" }
            30 { $MusicNote = "F#1" }
            31 { $MusicNote = "G1" }
            32 { $MusicNote = "G#1" }
            33 { $MusicNote = "A1" }
            34 { $MusicNote = "A#1" }
            35 { $MusicNote = "B1" }
            36 { $MusicNote = "C2" }
            37 { $MusicNote = "C#2" }
            38 { $MusicNote = "D2" }
            39 { $MusicNote = "D#2" }
            40 { $MusicNote = "E2" }
            41 { $MusicNote = "F2" }
            42 { $MusicNote = "F#2" }
            43 { $MusicNote = "G2" }
            44 { $MusicNote = "G#2" }
            45 { $MusicNote = "A2" }
            46 { $MusicNote = "A#2" }
            47 { $MusicNote = "B2" }
            48 { $MusicNote = "C3" }
            49 { $MusicNote = "C#3" }
            50 { $MusicNote = "D3" }
            51 { $MusicNote = "D#3" }
            52 { $MusicNote = "E3" }
            53 { $MusicNote = "F3" }
            54 { $MusicNote = "F#3" }
            55 { $MusicNote = "G3" }
            56 { $MusicNote = "G#3" }
            57 { $MusicNote = "A3" }
            58 { $MusicNote = "A#3" }
            59 { $MusicNote = "B3" }
            60 { $MusicNote = "C4" }
            61 { $MusicNote = "C#4" }
            62 { $MusicNote = "D4" }
            63 { $MusicNote = "D#4" }
            64 { $MusicNote = "E4" }
            65 { $MusicNote = "F4" }
            66 { $MusicNote = "F#4" }
            67 { $MusicNote = "G4" }
            68 { $MusicNote = "G#4" }
            69 { $MusicNote = "A4" }
            70 { $MusicNote = "A#4" }
            71 { $MusicNote = "B4" }
            72 { $MusicNote = "C5" }
            73 { $MusicNote = "C#5" }
            74 { $MusicNote = "D5" }
            75 { $MusicNote = "D#5" }
            76 { $MusicNote = "E5" }
            77 { $MusicNote = "F5" }
            78 { $MusicNote = "F#5" }
            79 { $MusicNote = "G5" }
            80 { $MusicNote = "G#5" }
            81 { $MusicNote = "A5" }
            82 { $MusicNote = "A#5" }
            83 { $MusicNote = "B5" }
            84 { $MusicNote = "C6" }
            85 { $MusicNote = "C#6" }
            86 { $MusicNote = "D6" }
            87 { $MusicNote = "D#6" }
            88 { $MusicNote = "E6" }
            89 { $MusicNote = "F6" }
            90 { $MusicNote = "F#6" }
            91 { $MusicNote = "G6" }
            92 { $MusicNote = "G#6" }
            93 { $MusicNote = "A6" }
            94 { $MusicNote = "A#6" }
            95 { $MusicNote = "B6" }
            96 { $MusicNote = "C7" }
            97 { $MusicNote = "C#7" }
            98 { $MusicNote = "D7" }
            99 { $MusicNote = "D#7" }
            100 { $MusicNote = "E7" }
            101 { $MusicNote = "F7" }
            102 { $MusicNote = "F#7" }
            103 { $MusicNote = "G7" }
            104 { $MusicNote = "G#7" }
            105 { $MusicNote = "A7" }
            106 { $MusicNote = "A#7" }
            107 { $MusicNote = "B7" }
            108 { $MusicNote = "C8" }
            109 { $MusicNote = "C#8" }
            110 { $MusicNote = "D8" }
            111 { $MusicNote = "D#8" }
            112 { $MusicNote = "E8" }
            113 { $MusicNote = "F8" }
            114 { $MusicNote = "F#8" }
            115 { $MusicNote = "G8" }
            116 { $MusicNote = "G#8" }
            117 { $MusicNote = "A8" }
            118 { $MusicNote = "A#8" }
            119 { $MusicNote = "B8" }
            120 { $MusicNote = "C9" }
            121 { $MusicNote = "C#9" }
            122 { $MusicNote = "D9" }
            123 { $MusicNote = "D#9" }
            124 { $MusicNote = "E9" }
            125 { $MusicNote = "F9" }
            126 { $MusicNote = "F#9" }
            127 { $MusicNote = "G9" }
        }
    }


    $InstrumentNoteOffQueueObject = [PSCustomObject]@{ 
        MidiNumber = $MidiNumber
        Velocity = $Velocity
        NoteLength = $NoteLength
        Channel  = $null
        Port     = $null
    }
    
    
    return [PSCustomObject]@{
        MusicNote  = $MusicNote
        MidiNumber = $MidiNumber
        Velocity   = $Velocity
        NoteLength = $NoteLength
        NoteOffObject = $InstrumentNoteOffQueueObject
    }
}




#Fine Art Starts here
$Art1 = "
|---------------------------------------------------------------------------|
|                                                                           |
|   ______ __               _______ __                                      |
|   |   __ \  |.--.--.-----.|     __|  |_.-----.-----.-----.-----.----.     |
|   |   __ <  ||  |  |  -__||__     |   _|  -__|  _  |  _  |  -__|   _|     |
|   |______/__||_____|_____||_______|____|_____|   __|   __|_____|__|       |
|                                              |__|  |__|                   |
|   https://github.com/leeberg/BlueStepper                                  |
|---------------------------------------------------------------------------|"
$Art2 = "|      "
$Art3 = "["
$Art4 = "][ ][ ][ ]  |  ["
$Art5 = "][ ][ ][ ]  |  ["
$Art6 = "][ ][ ][ ]  |  ["
$Art7 = "][ ][ ][ ]"
$Art8 = "      |"
$RedX = "X"
$Art9 = "|---------------------------------------------------------------------------|"
#>

Write-Host $Art1 -ForegroundColor Blue
Write-Host $Art2 -ForegroundColor Blue -NoNewline
Write-Host $Art3 -ForegroundColor White -NoNewline
Write-Host $RedX -ForegroundColor Red -NoNewline
Write-Host $Art4 -ForegroundColor White -NoNewline
Write-Host $RedX -ForegroundColor Red -NoNewline
Write-Host $Art5 -ForegroundColor White -NoNewline
Write-Host $RedX -ForegroundColor Red -NoNewline
Write-Host $Art6 -ForegroundColor White -NoNewline
Write-Host $RedX -ForegroundColor Red -NoNewline
Write-Host $Art7 -ForegroundColor White -NoNewline
Write-Host $Art8 -ForegroundColor Blue
Write-Host $Art9 -ForegroundColor Blue

Write-Host "... Let's do Some Steppin'! "





