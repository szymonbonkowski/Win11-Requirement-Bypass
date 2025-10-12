param (
    [string]$isoPath = $args[0]
)

if (-not $isoPath) { Write-Host "ERROR: Drag and drop an .iso file onto Run.bat." -ForegroundColor Red; Start-Sleep -Seconds 5; exit }
if (-not $isoPath.EndsWith('.iso')) { Write-Host "ERROR: The provided file '$isoPath' is not an .iso image." -ForegroundColor Red; Start-Sleep -Seconds 5; exit }

$mountResult = $null
try {
    Write-Host "Mounting ISO image: $isoPath" -ForegroundColor Green
    $mountResult = Mount-DiskImage -ImagePath $isoPath -Access ReadOnly -PassThru

    $driveLetter = $null
    for ($i = 0; $i -lt 10; $i++) {
        $volume = $mountResult | Get-Volume
        if ($volume.DriveLetter) {
            $driveLetter = $volume.DriveLetter
            break
        }
        Start-Sleep -Milliseconds 500
    }
    if (-not $driveLetter) { throw "Failed to obtain the mounted drive letter within 5 seconds." }

    Write-Host "Image mounted as drive $driveLetter`:" -ForegroundColor Green
    $setupPath = Join-Path -Path "${driveLetter}:\" -ChildPath "sources\setupprep.exe"

    if (-not (Test-Path $setupPath)) { throw "File 'sources\setupprep.exe' not found in the ISO image. This method will not work." }

    Write-Host "Launching installer: $setupPath /product server" -ForegroundColor Green
    Start-Process -FilePath $setupPath -ArgumentList "/product server"
    Write-Host "Done. The installer has been launched." -ForegroundColor Cyan
}
catch {
    Write-Host "An error occurred: $($_.Exception.Message)" -ForegroundColor Red
    Start-Sleep -Seconds 10
}
finally {
    if ($mountResult) {
        Start-Sleep -Seconds 5
        Write-Host "Dismounting ISO image..." -ForegroundColor Yellow
        Dismount-DiskImage -ImagePath $isoPath
    }
}
