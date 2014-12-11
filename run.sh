#!/bin/sh
HUBOT_CONFIG_URL=${HUBOT_CONFIG_URL:-}

git clone $HUBOT_CONFIG_URL /tmp/hubot

rm -rf /tmp/hubot/.git/
rm -rf /opt/hubot/scripts && mv /tmp/hubot/scripts/ /opt/hubot/
rm /opt/hubot/external-scripts.json && mv /tmp/hubot/external-scripts.json /opt/hubot/
rm /opt/hubot/package.json && mv /tmp/hubot/package.json /opt/hubot/
rm /opt/hubot/hubot-scripts.json && mv /tmp/hubot/hubot-scripts.json /opt/hubot/

/usr/bin/supervisord