$ipaddress = "mdr31.eventtracker.com"
$list = 14503,14506,14571,14572,14574
Foreach ($i in $list){
$connection = New-Object System.Net.Sockets.TcpClient($ipaddress, $i)
if ($connection.Connected) {
    Write-Host "Success"
    Write-Host $i
}
else {
    Write-Host "Failed"
}
}
