docker-hubot-flowdock
=====================

### Example build and deployment (using boot2docker)

```
boot2docker init && boot2docker up && boot2docker ssh
git clone https://github.com/jimfdavies/docker-hubot-flowdock.git
cd docker-hubot-flowdock/
git pull && docker build --tag=hubot --rm=true .
docker run -d -e HUBOT_FLOWDOCK_LOGIN_EMAIL=hubot@mydomain.com -e HUBOT_FLOWDOCK_LOGIN_PASSWORD=r0b0t --name=hubot hubot:latest
```