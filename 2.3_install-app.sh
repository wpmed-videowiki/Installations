#sudo apt install gnupg
#sudo apt install software-properties-common
#sudo add-apt-repository ppa:chris-lea/redis-server
#sudo apt-get update && sudo apt-get install redis

# as root
apt install redis-server # 6.0.16
redis-server --version
apt install nginx

# as videowiki
su - videowiki

cd /opt/wpmed-videowiki
git clone https://github.com/wpmed-videowiki/videowiki.git
git clone https://github.com/wpmed-videowiki/human-voice-bot.git
cd videowiki
npm install # install packages

