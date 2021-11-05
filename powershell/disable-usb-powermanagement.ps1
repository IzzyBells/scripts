# Run script in elevated PowerShell window if not currently ran as administrator

if (-NOT ([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator"))  
{  
  $arguments = "& '" +$myinvocation.mycommand.definition + "'"
  Start-Process powershell -Verb runAs -ArgumentList $arguments
  Break
}

# Select all USB devices

$devicesUSB = Get-PnpDevice | where {$_.InstanceId -like "*USB\ROOT*"}  | 
ForEach-Object -Process {
Get-CimInstance -ClassName MSPower_DeviceEnable -Namespace root\wmi 
}

# Untick "Allow the computer to turn off device to save power" option for all selected devices

foreach ( $device in $devicesUSB )
{
    Set-CimInstance -Namespace root\wmi -Query "SELECT * FROM MSPower_DeviceEnable WHERE InstanceName LIKE '%$($device.PNPDeviceID)%'" -Property @{Enable=$False} -PassThru
}
