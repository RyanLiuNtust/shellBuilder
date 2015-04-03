#Remove all opencv dependence
sudo find / -name "*opencv*" -exec rm -i {} \;
git clone https://github.com/Itseez/opencv.git ~/software/ 
cd ~/software/opencv/
mkdir build
cd build
cmake -D CMAKE_BUILD_TYPE=RELEASE -D CMAKE_INSTALL_PREFIX=/usr/local -D WITH_TBB=ON -D BUILD_NEW_PYTHON_SUPPORT=ON -D WITH_V4L=ON -D INSTALL_C_EXAMPLES=ON -D INSTALL_PYTHON_EXAMPLES=ON -D BUILD_EXAMPLES=ON -D WITH_QT=ON -D WITH_OPENGL=ON -D WITH_CUDA=ON -D WITH_CUBLAS=ON -D CUDA_FAST_MATH:BOOL=1 ..
make -j8
sudo checkinstall
sudo sh -c 'echo "/usr/local/lib" > /etc/ld.so.conf.d/opencv.conf"'
sudo ldconfig
echo "Install complete"
