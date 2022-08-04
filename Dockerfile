FROM ddsderek/foundations:Ubuntu20.04-nginx1.18.0-php7.4-sql-apt

ENV TAG=12.3.0

ADD ./shell /shell

WORKDIR /

RUN wget https://cn.piwigo.org/download/dlcounter.php?code=${TAG} -O piwigo.zip && \
    unzip piwigo.zip && \
    mv /piwigo /web && \
    cp -r /web /app && \
    rm -rf /piwigo.zip && \
    apt-get remove -y wget zip && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* && \
    chmod -R 755 /shell

WORKDIR /app/web