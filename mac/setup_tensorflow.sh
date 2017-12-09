# install homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# install python 3
brew install python3

# install pip
#easy_install pip3
pip3 install --upgrade virtualenv

# create tensorflow 
virtualenv --system-site-packages ~/tensorflow

# active
source ~/tensorflow/bin/activate 

pip3 install --upgrade tensorflow numpy scikit-learn pandas matplotlib
