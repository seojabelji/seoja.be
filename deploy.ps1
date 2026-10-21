$Source = "C:\Users\김동건\seoja.be\lji"
$Destination = "dell:C:/seoja.be/lji/"

Write-Host "Deploying..."

scp -r "$Source\*" $Destination

if ($LASTEXITCODE -eq 0) {
	Write-Host "Deployment complete."
} else {
	Write-Host "Deployment failed."
	exit 1
}