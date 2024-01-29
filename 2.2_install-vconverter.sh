##### vconverter ###############

apt install gnupg2 curl wget apt-transport-https software-properties-common -y
apt install erlang erlang-nox
# apt install unzip # already there

# install node as above

add-apt-repository 'deb http://www.rabbitmq.com/debian/ testing main'
wget -O- https://www.rabbitmq.com/rabbitmq-release-signing-key.asc | apt-key add -
apt update -y
apt install rabbitmq-server -y # complained about release
# E: The repository 'http://www.rabbitmq.com/debian testing Release' does not have a Release file.
# N: Updating from such a repository can't be done securely, and is therefore disabled by default.

#start rabbitmq-server - it runs
systemctl enable rabbitmq-server
systemctl status rabbitmq-server
rabbitmqctl add_user admin adminpassword
rabbitmqctl set_user_tags admin administrator
rabbitmqctl set_permissions -p / admin ".*" ".*" ".*"
rabbitmqctl status
rabbitmqctl

 apt install ffmpeg

 mkdir -p /opt/wpmed-videowiki
cd /opt/wpmed-videowiki

git clone https://github.com/videowikips/export

git clone https://github.com/wpmed-videowiki/audio-processing

apt install sox
apt install libasound2-plugins libsox-fmt-all # libasound2-python is not installed
apt install libasound2-python

apt install libssl-dev
apt install fonts-indic


mkdir -p /opt/videowiki/packages/NotoSansOlChiki
cd  /opt/videowiki/packages/NotoSansOlChiki
curl -o NotoSansOlChiki-hinted.zip  https://noto-website-2.storage.googleapis.com/pkgs/NotoSansOlChiki-hinted.zip

unzip NotoSansOlChiki-hinted.zip

mkdir /usr/share/fonts/truetype/NotoSansOlChiki

mv LICENSE_OFL.txt NotoSansOlChiki-Regular.ttf README /usr/share/fonts/truetype/NotoSansOlChiki/

cd /usr/share/fonts/truetype/NotoSansOlChiki/

chmod 744 NotoSansOlChiki-Regular.ttf

# edit .env files in export and audio-processing

# start node processes

cd export/
pm2 monit
npm start

cd audio-processing/
pm2 monit
npm start

# no npm install
# no npm build
