$operationalStatus = (Get-Disk | Get-Partition | Where-Object DriveLetter -eq 'A' | Get-Volume).OperationalStatus
if ($operationalStatus -eq 'OK') {
    $result = 1
} else {
    $result = 0
}

$result
