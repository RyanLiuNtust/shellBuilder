#!/bin/bash
sudo apt-get update
sudo apt-get install -y gcc
wget http://developer.download.nvidia.com/compute/cuda/repos/ubuntu1204/x86_64/cuda-repo-ubuntu1204_5.5-0_amd64.deb
sudo dpkg -i cuda-repo-ubuntu1204_5.5-0_amd64.deb
sudo apt-get update
sudo apt-get install -y cuda
export PATH=/usr/local/cuda-5.5/bin:$PATH
export LD_LIBRARY_PATH=/usr/local/cuda-5.5/lib64:$LD_LIBRARY_PATH


#sudo su
#wget http://developer.download.nvidia.com/compute/cuda/repos/ubuntu1204/x86_64/cuda-repo-ubuntu1204_6.0-37_amd64.deb
#sudo dpkg -i cuda-repo-ubuntu1204_6.0-37_amd64.deb
#sudo apt-get update
#sudo apt-get install -y cuda

#export CUDA_HOME=/usr/local/cuda-6.0
#export LD_LIBRARY_PATH=${CUDA_HOME}/lib64
#export PATH=${CUDA_HOME}/bin:$PATH
#sudo apt-get install -y libprotobuf-dev libleveldb-dev libsnappy-dev libopencv-dev libboost-all-dev libhdf5-serial-dev

#for google logging library
#if fail, pls download by hand
#curl -o https://google-glog.googlecode.com/files/glog-0.3.3.tar.gz
#tar zxvf glog-0.3.3.tar.gz
#cd ./glog-0.3.3/
#./configure
#make & make install
#python

