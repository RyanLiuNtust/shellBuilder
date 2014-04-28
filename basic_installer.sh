#update first
echo "update......."
sudo apt-get update && sudo apt-get upgrade && sudo apt-get dist-upgrade

#install wifi connection
sudo apt-get -y install wicd

# install the guake terminal that could use F12 to start the terminal
echo "install guake......."
sudo apt-get -y install guake

# install the boost lib 
echo "install boost....."
sudo apt-get -y install libboost-all-dev

# install the photo edit
echo "install image editor gimp"
sudo apt-get -y install gimp

#install the screenshots editor
echo "install shutter"
sudo apt-get -y install shutter

echo "install octave"
sudo apt-get -y install octave



