echo Welcome to Shuffle!
echo Installation will start automatically after a while.

cd ~
mkdir .shuffle
cd .shuffle
wget -O bin.zip https://github.com/shflterm/install/raw/main/bin.zip
unzip bin.zip

chmod a+x ~/.shuffle/bin/shuffle

echo Install the default app.
~/.shuffle/bin/shuffle shfl apps add cd dir help list mk rm

echo shuffle has been successfully installed in '~/.shuffle/bin/shuffle'.
