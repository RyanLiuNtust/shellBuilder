# pyenv environment setting refers to https://github.com/yyuu/pyenv.git
cd 
git clone git://github.com/yyuu/pyenv.git .pyenv
#add pyenv to bashrc,the guide can be refer to above
echo 'eval "$(pyenv init -)"' >> ~/.bashrc 
exec $SHELL
pyenv install 2.7.5
pyenv rehash










