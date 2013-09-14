#These are libraries and tools required by opencv
sudo apt-get install build-essential checkinstall cmake pkgconfig yasm

#For image
sudo apt-get install libtiff4-dev libjpeg-dev libjasper-dev

#for video I/O
sudo apt-get install libavcodec-dev libavformat-dev libswscale-dev libdc1394-22-dev libxine-dev libgstreamer0.10-dev libgstreamer-plugins-base0.10-dev libv4l-dev

#for python
sudo apt-get install python-dev python-numpy
#other third-party libraries
sudo apt-get install libtbb-dev
#for GUI
sudo apt-get install libqt4-dev libgtk2.0-dev
#for configuaration of opencv
tar -xvf opencv-2.4.6.1.tar.gz
cd opencv-2.4.6.1
mkdir build
cd build
#Can watch README to select which feature do u want
cmake -D WITH_QT=ON -D WITH_XINE=ON -D WITH_OPENGL=ON -D WITH_TBB=ON -D BUILD_EXAMPLES=ON

