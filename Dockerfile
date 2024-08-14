FROM ubuntu:latest

ARG token="# TOKEN #"
ARG owner="# OWNER #"
ARG prefix="!"

COPY config.txt config.txt
COPY latest_release.py latest_release.py

RUN sed -i 's/##token/'$token'/g' config.txt
RUN sed -i 's/##owner/'$owner'/g' config.txt
RUN sed -i 's/##prefix/'$prefix'/g' config.txt

RUN apt update
RUN apt install -y openjdk-11-jre wget python3 python3-pip
RUN python3 -m pip install requests
RUN python3 latest_release.py | wget -O JMusicBot.jar -i-

CMD ["java", "-Dnogui=true", "-jar", "JMusicBot.jar"]
