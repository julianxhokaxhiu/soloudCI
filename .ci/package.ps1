Set-Location ${env:buildPath}\soloud
mkdir .dist | Out-Null

Move-Item lib .dist
Move-Item include .dist

mkdir ${env:buildPath}\.dist | Out-Null
Compress-Archive -Path .dist\* -DestinationPath "${env:buildPath}\.dist\${env:_RELEASE_NAME}-${env:_RELEASE_VERSION}_${env:_RELEASE_CONFIGURATION}.zip"
