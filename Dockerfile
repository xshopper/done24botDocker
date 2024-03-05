# Firefox over VNC
#
# VERSION               0.1
# DOCKER-VERSION        0.2

from node:slim

run apt-get update
run apt-get install git -y

# For development
run apt-get install vim procps -y

run npm install pm2 redis -g
run git clone https://github.com/xshopper/done24bot.git
run cd done24bot

entrypoint ["/done24bot/entrypoint.sh"]
