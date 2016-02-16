FROM ubuntu

RUN apt-get update && apt-get install -y --no-install-recommends firefox && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

ENV USER ubuntu
ENV UID 1000

RUN useradd -m -u $UID $USER && \
    echo "$USER ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers

USER $USER

CMD /usr/bin/firefox
