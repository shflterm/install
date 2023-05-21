echo "
   _____   _    _    ______   _      
  / ____| | |  | |  |  ____| | |     
 | (___   | |__| |  | |__    | |     
  \___ \  |  __  |  |  __|   | |     
  ____) | | |  | |  | |      | |____ 
 |_____/  |_|  |_|  |_|      |______|
                                     "
echo "Installation will start automatically after a while."

if (Test-Path "$env:APPDATA\.shuffle") {
  Remove-Item "$env:APPDATA\.shuffle" -Recurse -Force | out-null
}

Set-Location $env:APPDATA | out-null
New-Item .shuffle -ItemType Directory | out-null
Set-Location .shuffle | out-null

Invoke-WebRequest "https://github.com/shflterm/install/raw/main/bin.zip" -O bin.zip | out-null
Expand-Archive bin.zip -DestinationPath . | out-null

& "$env:APPDATA\.shuffle\bin\shuffle.exe" shfl apps add cd dir help list mk rm

echo "shuffle has been successfully installed in '%APPDATA%/.shuffle/bin/shuffle'."
