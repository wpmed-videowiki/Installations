# all instances as root
apt update
apt upgrade # N.B. grub goes on VM drive, not partition
apt install curl sudo git unzip
# yarn does not work
# install with npm
# apt install nginx ufw
# apt install build-essential

# nano /etc/hosts if change hostname

if [ ! -d /home/videowiki ]; then
  sudo adduser videowiki
  adduser videowiki sudo
fi
sudo mkdir -p /opt/wpmed-videowiki
sudo chown -R videowiki /opt/wpmed-videowiki

su - videowiki
# do rest as videowiki

# curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash
. .bashrc
# nvm install v14.18.2
nvm install v18

# nvm alias default v14.18.2

# for latest
npm install --global yarn@latest
npm install -g npm@latest
npm install -g npm@9.3.1
npm install pm2@latest -g
npm install uuid@latest
