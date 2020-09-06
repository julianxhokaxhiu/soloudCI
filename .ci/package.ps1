Set-Location ${env:buildPath}\soloud
New-Item -Path ".dist\bin\soloud" -ItemType Directory | Out-Null
New-Item -Path ".dist\include\soloud" -ItemType Directory | Out-Null
New-Item -Path ".dist\lib\soloud" -ItemType Directory | Out-Null

Move-Item lib\*.dll .dist\bin\soloud
Move-Item lib\* .dist\lib\soloud
Move-Item include\* .dist\include\soloud

mkdir ${env:buildPath}\.dist | Out-Null
Compress-Archive -Path .dist\* -DestinationPath "${env:buildPath}\.dist\${env:_RELEASE_NAME}-${env:_RELEASE_VERSION}_${env:_RELEASE_CONFIGURATION}.zip"
