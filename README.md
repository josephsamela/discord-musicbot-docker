# discord-musicbot-docker

Docker container for the MusicBot discord server. https://github.com/jagrosh/MusicBot

Edit `Dockerfile` and enter your bot token and user id.

(See [Getting a Bot Token](https://github.com/jagrosh/MusicBot/wiki/Getting-a-Bot-Token) and [Finding Your User ID](https://github.com/jagrosh/MusicBot/wiki/Finding-Your-User-ID) if you need help finding these).

Run build and run container like this:

```
$ docker build -t musicbot .
$ docker run -d --restart=always musicbot
```

This will make the container run at startup and restart if it crashes.

