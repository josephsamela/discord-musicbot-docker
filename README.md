# discord-musicbot-docker


Adding music-bots to your Discord server is a ton of fun! However, most of the *free* music bots require you to purchase "premium" for basic features like adjusting the volume...that's ridiculous right?! Thankfully, [MusicBot](https://github.com/jagrosh/MusicBot) has our back with a really polished and easy to use music bot that you can host yourself!

This project wraps MusicBot in a Docker contatainer for fast and simple deployment.

## Deploy

Edit `Dockerfile` and enter your `bot token` and `user id`.

(See [Getting a Bot Token](https://github.com/jagrosh/MusicBot/wiki/Getting-a-Bot-Token) and [Finding Your User ID](https://github.com/jagrosh/MusicBot/wiki/Finding-Your-User-ID) if you need help finding these).

Run build and run container like this:

```
// Clone this repo
$ git clone https://github.com/JosephSamela/discord-musicbot-docker
$ cd discord-musicbot-docker

// Build and run the bot
$ docker build -t musicbot .
$ docker run -d --restart=unless-stopped --name=musicbot musicbot
```

## Docker Compose

Create a new service in your `docker-compose.yaml` file.

```yaml
musicbot:
    container_name: musicbot
    build:
      context: ../discord-musicbot-docker
      dockerfile: ../discord-musicbot-docker/Dockerfile
    restart: unless-stopped
```

Then build and run the container like this.

```
$ docker compose up -d --build musicbot
```

After the bot is running, you'll need to [add the bot to your server](https://github.com/jagrosh/MusicBot/wiki/Adding-Your-Bot-To-Your-Server).

