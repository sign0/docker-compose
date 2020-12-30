FROM docker:20.10.1

COPY ./scripts/ /scripts/

RUN apk update &&\
    apk add --no-cache \
        docker-compose \
        openssh-client \
        rsync \
        pigz \
    &&\
    mkdir -p ~/.ssh &&\
    touch ~/.ssh/known_hosts &&\
    touch ~/.ssh/authorized_keys &&\
    touch ~/.ssh/id_rsa &&\
    touch ~/.ssh/id_rsa.pub &&\
    chmod -R 600 ~/.ssh &&\
    chmod +x /scripts/*.sh &&\
    ln -s /usr/bin/pigz /usr/local/bin/gzip &&\
    ln -s /usr/bin/unpigz /usr/local/bin/gunzip &&\
    ln -s /scripts/multi-rsync.sh /usr/local/bin/multi-rsync
