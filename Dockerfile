FROM ddsderek/foundations:Ubuntu20.04-nginx1.16.1-php7.4.20-nostart

COPY ./web /web
COPY ./web /app/web
COPY start.sh /

CMD [ "/start.sh" ]