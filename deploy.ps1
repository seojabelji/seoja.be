$ProjectDir = $PSScriptRoot

Write-Host "Deploying..."

& "C:\msys64\usr\bin\bash.exe" -lc @"
cd '$ProjectDir'
rsync -av --delete --exclude='.git/' --exclude='.idea/' --exclude='deploy.ps1' --exclude='caddy.exe' --exclude='winsw.exe' --exclude='winsw.xml' --exclude='winsw.wrapper.log' --exclude='*.log' --exclude='*.tmp' --rsync-path='C:/msys64/usr/bin/rsync.exe' ./ dell:/c/seoja.be/
"@

if ($LASTEXITCODE -eq 0) {
	Write-Host "Deployment complete."
} else {
	Write-Host "Deployment failed."
	exit 1
}