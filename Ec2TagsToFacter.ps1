# Place into C:\ProgramData\PuppetLabs\facter\facts.d
$InstanceIdDocument = ((New-Object System.Net.WebClient).DownloadString("http://169.254.169.254/latest/dynamic/instance-identity/document") | ConvertFrom-Json)
$Region = $InstanceIdDocument.region
$InstanceId = (New-Object System.Net.WebClient).DownloadString("http://169.254.169.254/latest/meta-data/instance-id")

Get-EC2Tag -region $Region | Where-Object {$_.ResourceId -eq $InstanceId} | ForEach-Object{
    $keyVal = "ec2tag_" + $_.Key + "=" + $_.Value
    Write-Host $keyVal
}
