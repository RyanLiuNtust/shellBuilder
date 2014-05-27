#pyenv environment setting refers to https://github.com/yyuu/pyenv.git
cd 
git clone git://github.com/yyuu/pyenv.git .pyenv
#add pyenv to bashrc,the guide can be refer to above
echo 'eval "$(pyenv init -)"' >> ~/.bashrc 
exec $SHELL
pyenv install 2.7.5
pyenv rehash

#install the numpy
sudo apt-get install python-dev build-essential
sudo pip install numpy

#install the pip https://docs.google.com/document/d/1YNw5oaM8itWiGt2GH03g0v7UHsIvLBcMDuEsP5IQ-Jg/edit
curl -O http://python-distribute.org/distribute_setup.py
sudo python distribute setup.py
sudo easy install pip 

#libary
#facebook e.g. pip install -e git+git://github.com/pythonforfacebook/facebook-sdk.git#egg=facebook-sdk
#opencv
#graph
