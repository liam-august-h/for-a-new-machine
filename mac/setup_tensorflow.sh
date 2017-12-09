# install homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# install python 3
brew install python3

# install pip
easy_install pip3
pip install --upgrade virtualenv

# create tensorflow 
virtualenv --system-site-packages ~/tensorflow

# active
source ~/tensorflow/bin/activate 

pip install https://storage.googleapis.com/tensorflow/mac/tensorflow-0.5.0-py2-none-any.whl
pip install numpy
pip install scikit-learn
pip install pandas
pip install matplotlib