echo "\t  /$$$$$$        /$$   /$$       /$$$$$$$$       /$$      \n
\t /$$__  $$      | $$  | $$      | $$_____/      | $$      \n
\t| $$  \\__/      | $$  | $$      | $$            | $$      \n
\t|  $$$$$$       | $$$$$$$$      | $$$$$         | $$      \n
\t \\____  $$      | $$__  $$      | $$__/         | $$      \n
\t /$$  \\ $$      | $$  | $$      | $$            | $$      \n
\t|  $$$$$$/      | $$  | $$      | $$            | $$$$$$$$\n
\t \\______/       |__/  |__/      |__/            |________/\n"
echo "Installation will start automatically after a while."

Set-Location $env:APPDATA | out-null
New-Item .shuffle -ItemType Directory | out-null
Set-Location .shuffle | out-null

Invoke-WebRequest https://github.com/shflterm/install/raw/main/bin.zip -O bin.zip | out-null
Expand-Archive bin.zip -DestinationPath . | out-null

echo "Install the default app."
%APPDATA%/.shuffle/bin/shuffle shfl apps add cd dir help list mk rm | out-null

echo "shuffle has been successfully installed in '%APPDATA%/.shuffle/bin/shuffle'."
