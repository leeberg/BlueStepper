# Import Modules
Import-Module "C:\Users\lee\Windows-10-PowerShell-MIDI\PeteBrown.PowerShellMidi\bin\Debug\PeteBrown.PowerShellMidi.dll" -Force
Import-Module "C:\Users\lee\BlueStepper\Module\BlueStepper.psd1" -Force

# MikeCodesDotNET - Multimedia-Timer - https://github.com/MikeCodesDotNET/Multimedia-Timer
$Assembly = [System.Reflection.Assembly]::LoadFile("C:\Users\lee\.nuget\packages\multimediatimer\1.0.1\lib\netcoreapp3.1\MultimediaTimer.dll")

# Setup Midi Interface Device Outputs
$Win10Midi = New-BSMidiOutputDevice -DeviceID "\\?\SWD#MMDEVAPI#MicrosoftGSWavetableSynth#{6dc23320-ab33-4ce4-80d4-bbb3ebbf2814}"
$TX1 = New-BSMidiOutputDevice -DeviceID "\\?\SWD#MMDEVAPI#MIDII_62E8D3FD.P_0000#{6dc23320-ab33-4ce4-80d4-bbb3ebbf2814}"
$TX2 = New-BSMidiOutputDevice -DeviceID "\\?\SWD#MMDEVAPI#MIDII_62E8D3FD.P_0001#{6dc23320-ab33-4ce4-80d4-bbb3ebbf2814}"

# Setup Instruments - TODO Reconsider this, maybe the sequ
$DrumMachine = New-BSInstrument -Name "Arturia Drumbrute Impact" -Instrument "Drum" -MidiOutputDevice $TX2 -MidiChannel 9
$SynthBass = New-BSInstrument -Name "Korg Volca FM" -Instrument "Bass" -MidiOutputDevice $TX2 -MidiChannel 0
$SynthLead = New-BSInstrument -Name "Korg Volca Keys" -Instrument "Synth" -MidiOutputDevice $TX1 -MidiChannel 0

# Set Instruments as Active
# Note - this will allow us switch out devices / Instruments on the fly in the middle of a song
Set-BSActiveInstrument -Instrument $DrumMachine
Set-BSActiveInstrument -Instrument $SynthBass
Set-BSActiveInstrument -Instrument $SynthLead


#Send-MidiNoteOnMessage -Note 36 -Velocity 100 -Channel 9 -Port $DrumMachine.MidiOutput.OutputPort

# Utility
Set-BSSequencerDebugMode -EnableDebug $true 

# Load Song
$Song = .\Songs\Robots.ps1

# Let's Play 
Invoke-BSPlayBack -Song $Song -StartStep 1
