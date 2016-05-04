FROM ubuntu

# ia32-libs
RUN apt-get update && \
    apt-get install -y --no-install-recommends firefox libglu1-mesa:amd64 libglu1-mesa:i386 && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

ENV USER ubuntu
ENV UID 1000

RUN useradd -m -u $UID $USER && \
    echo "$USER ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers

ADD docker-entrypoint.sh /
ENTRYPOINT ["/docker-entrypoint.sh"]

CMD ["/usr/bin/firefox"]
