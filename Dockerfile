FROM ubuntu:latest

ARG token="<enter-bot-token>"
ARG owner="<enter-user-token>"
ARG prefix="!"

COPY config.txt config.txt

RUN sed -i 's/##token/'$token'/g' config.txt
RUN sed -i 's/##owner/'$owner'/g' config.txt
RUN sed -i 's/##prefix/'$prefix'/g' config.txt

RUN apt update
RUN apt install -y openjdk-11-jre wget
RUN wget https://github.com/jagrosh/MusicBot/releases/download/0.2.10/JMusicBot-0.2.10-Linux.jar

CMD ["java", "-Dnogui=true", "-jar", "JMusicBot-0.2.10-Linux.jar"]