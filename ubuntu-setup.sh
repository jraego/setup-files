sudo apt update
sudo apt install vim -y
sudo apt install curl -y
sudo apt install unity-tweak-tool -y
sudo apt install filezilla -y
sudo apt install git -y
sudo apt install apache2 -y
sudo apt install php7.0 libapache2-mod-php7.0 -y
sudo apt install mysql-server -y
sudo snap install keepassxc

# install gimp
sudo add-apt-repository ppa:otto-kesselgulasch/gimp
sudo apt update
sudo apt install gimp

# install nvm and node
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash
nvm install 8.11.1

# install mongodb
sudo apt adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 2930ADAE8CAF5059EE73BB4B58712A2291FA4AD5
# for Ubuntu 16.04
echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.6 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.6.list
sudo apt update
sudo apt install -y mongodb-org

# install atom
#sudo add-apt-repository ppa:webupd8team/atom
#sudo update
#sudo apt install atom

# configure git and my setup repo
git config --global user.email "jraego@gmail.com"
git config --global user.name "jraego"
git clone https://github.com/jraego/setup-files
ln setup-files/.vimrc .vimrc

sudo /etc/init.d/apache2 restart
# test that apache is working with php
#sudo rm /var/www/html/index.html
#sudo touch /var/www/html/index.php
#sudo echo '<?php echo 'Hello!' ?>' > /var/www/html/index.php
