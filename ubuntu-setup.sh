sudo apt update
sudo apt install vim -y
sudo apt install curl -y
sudo apt install unity-tweak-tool -y
sudo apt install filezilla
sudo apt install git -y
sudo apt install apache2 -y
sudo apt install php7.0 libapache2-mod-php7.0 -y
sudo apt install mysql-server -y

# install nvm and node
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash
sudo nvm install 8.11.1

# install atom
#sudo add-apt-repository ppa:webupd8team/atom -y
#sudo update
#sudo apt install atom

# install gimp
sudo add-apt-repository ppa:otto-kesselgulasch/gimp
sudo apt update
sudo apt install gimp

# configure git and my setup repo
git config --global user.email "jraego@gmail.com"
git config --global user.name "jraego"
mkdir my-setup-files
cd my-setup-files
git clone https://github.com/jraego/setup-files
cd ~
ln my-setup-files/.vimrc .vimrc

sudo /etc/init.d/apache2 restart 
# test that apache is working with php
#sudo rm /var/www/html/index.html
#sudo touch /var/www/html/index.php
#sudo echo '<?php echo 'Hello!' ?>' > /var/www/html/index.php

