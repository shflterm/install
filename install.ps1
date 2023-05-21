echo "Welcome to Shuffle!"
echo "Installation will start automatically after a while."

Set-Location $env:APPDATA
New-Item .shuffle -ItemType Directory
Set-Location .shuffle

Invoke-WebRequest https://github.com/shflterm/install/raw/main/bin.zip -O bin.zip
Expand-Archive bin.zip -DestinationPath .

echo "shuffle has been successfully installed in '%APPDATA%/.shuffle/bin/shuffle'."