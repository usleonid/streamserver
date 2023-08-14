FROM ubuntu:latest

# dependencies for CVEDIA-RT
RUN apt-get update && apt-get install -y \
    wget \
    curl \
    && rm -rf /var/lib/apt/lists/*

RUN wget -O /cvedia-rt.deb https://bin.cvedia.com/2023.4.0/cvedia-rt_2023.4.0_amd64-trt7.deb

# COPY ./cvedia-rt_2023.4.0_amd64-trt7.deb /cvedia-rt.deb
COPY ./libssl1.1_1.1.1f-1ubuntu2.19_amd64.deb /libssl1.1.deb
COPY ./libdc1394-22_2.2.5-2.1_amd64.deb /libdc1394.so.22.deb
COPY ./libilmbase24_2.3.0-6build1_amd64.deb /libilmbase24_2.3.deb
COPY ./libopenexr24_2.3.0-6ubuntu0.5_amd64.deb /libopenexr24_2.3.deb

# install dependencies and libraries for CVEDIA-RT
RUN apt-get update && apt-get install -y \
    dpkg-dev \
    && apt-get install -y libgstrtspserver-1.0-0 \
    && apt-get install -y libavformat58 \
    && apt-get install -y libswscale5 \
    # && apt-get update && apt-get install -y libilmbase24 \
    # && apt-get update && apt-get install -y libssl-dev \
    && dpkg -i /cvedia-rt.deb \
    && dpkg -i /libssl1.1.deb \
    && dpkg -i /libdc1394.so.22.deb \
    && dpkg -i /libilmbase24_2.3.deb \
    && dpkg -i /libopenexr24_2.3.deb \
    && apt-get install -f -y \
    && rm -rf /var/lib/apt/lists/*

# copy script for instance launching
COPY start_instance.sh ./start_instance.sh
RUN chmod +x ./start_instance.sh

CMD ["./start_instance.sh"]
