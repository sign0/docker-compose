FROM docker:23.0.4-alpine3.17

COPY ./scripts/ /scripts/

RUN apk update &&\
    apk add --no-cache \
        openssh-client \
        openssl \
        bash \
        git \
        direnv \
        rsync \
        pigz \
        curl \
    &&\
    ln -s /usr/bin/pigz /usr/local/bin/gzip &&\
    ln -s /usr/bin/unpigz /usr/local/bin/gunzip &&\
    ln -s /scripts/multi-rsync.sh /usr/local/bin/multi-rsync &&\
    echo 'eval "$(direnv hook bash)"' >> /root/.bashrc &&\
    sed -i "1s/.*/root:x:0:0:root:\/root:\/bin\/bash/" /etc/passwd
