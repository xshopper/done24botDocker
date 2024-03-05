# Firefox over VNC
#
# VERSION               0.1
# DOCKER-VERSION        0.2

from node:slim

run apt-get update
run apt-get install git redis-server -y

# For development
run apt-get install vim procps -y

run npm install pm2 -g
run git clone https://github.com/xshopper/done24bot.git

workdir /done24bot

run cd /done24bot
run npm install

run chmod +x /done24bot/entrypoint.sh

entrypoint ["/done24bot/entrypoint.sh"]
