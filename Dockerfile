FROM developeranaz/qbittorrent-rclone-heroku
RUN apt update 
#RUN apt install unzip qbittorrent-nox curl -y
RUN apt install jupyter -y
COPY entrypoint.sh /entrypoint.sh 
COPY qBconf.tar.gz /qBconf.tar.gz
RUN tar xvf /qBconf.tar.gz
RUN chmod +x /entrypoint.sh
CMD /entrypoint.sh
