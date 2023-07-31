FROM ubuntu:16.04
#RUN rm /bin/sh && ln -s /bin/bash /bin/sh
ARG DEBIAN_FRONTEND=noninteractive
ENV TZ=Asia/Kolkata
RUN apt update
RUN apt-get install -y python2.7 openjdk-8* gnupg flex bison gperf build-essential zip curl zlib1g-dev libc6-dev lib32ncurses5-dev x11proto-core-dev libx11-dev lib32z1-dev libgl1-mesa-dev g++-multilib tofrodos
RUN apt-get install -y libxml2-utils xsltproc lib32readline-dev lib32z1-dev libgl1-mesa-dev gcc-multilib g++-multilib tofrodos python-markdown xsltproc mingw-w64 libncurses5
RUN export LC_ALL=C
RUN alias python=python2.7
RUN python -V
RUN mkdir /sc20
RUN mv /etc/java-8-openjdk/security/java.security /etc/java-8-openjdk/security/java.security.backup
COPY ./java.security /etc/java-8-openjdk/security/java.security
WORKDIR /sc20/
ENTRYPOINT [ "sh", "/auto_build.sh"]