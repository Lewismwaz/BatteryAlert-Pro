# Set error behavior
$ErrorActionPreference = "SilentlyContinue"

# Define paths to sound files
$soundChargingOn     = "C:\Sounds\charging_on.wav"
$soundChargingOff    = "C:\Sounds\charging_off.wav"
$soundChargeComplete = "C:\Sounds\charge_complete.wav"

# Load .NET sound player once
function Play-Sound($path) {
    $player = New-Object System.Media.SoundPlayer $path
    $player.PlaySync()
}

# Get initial battery status
$global:lastStatus = (Get-WmiObject Win32_Battery).BatteryStatus

# Register for power status change only
Register-WmiEvent -Query "SELECT * FROM __InstanceModificationEvent WITHIN 1 WHERE TargetInstance ISA 'Win32_Battery'" -SourceIdentifier "BatteryStatusEvent" -Action {
    $status = $Event.SourceEventArgs.NewEvent.TargetInstance.BatteryStatus

    if ($status -ne $global:lastStatus) {
        $global:lastStatus = $status

        switch ($status) {
            1 { Play-Sound "C:\Sounds\charging_off.wav" }       # Discharging
            2 { Play-Sound "C:\Sounds\charging_on.wav" }        # Charging
            3 { Play-Sound "C:\Sounds\charge_complete.wav" }    # Fully Charged
        }
    }
}

# Wait indefinitely without a loop or CPU usage
while ($true) {
    Wait-Event -SourceIdentifier "BatteryStatusEvent"
}
