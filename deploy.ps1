$ProjectDir = $PSScriptRoot

Write-Host "Deploying..."

& "C:\msys64\usr\bin\bash.exe" -lc @"
cd '$ProjectDir'
rsync -av --delete --rsync-path='C:/msys64/usr/bin/rsync.exe' ./lji/ dell:/c/seoja.be/lji/
"@

if ($LASTEXITCODE -eq 0) {
	Write-Host "Deployment complete."
} else {
	Write-Host "Deployment failed."
	exit 1
}