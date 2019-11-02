FROM node:latest
RUN apt-get update && \
    apt-get install -y \
    apt-utils \
    build-essential \
    zlib1g-dev \
    libsdl2-dev \
    libasound2-dev \
    git \
    build-essential \
    gcc-multilib \
 #   libsndfile \
#    libx11-dev:i386 \
    python \
    python3 \
	  perl \
    wget \
    zip \
    unzip \
    sox \
    sqlite \
    curl \
    zlib1g-dev \
    libtool \
    autotools-dev \
    automake

RUN git clone https://github.com/julius-speech/julius.git
WORKDIR julius
RUN ./configure --enable-words-int
RUN  make -j4
CMD bash
