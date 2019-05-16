FROM ubuntu:18.04

MAINTAINER Michal Bogdal "michal.bogdal@gmail.com"

RUN 	apt-get update && apt-get install -y \
        zip unzip wget curl\
        && rm -rf /var/lib/apt/lists/*

RUN	cd /usr/local/games \
	&& mkdir quake3_arena \
	&& wget -O q3cpma.zip "https://www.dropbox.com/s/x5kmywtwq8nqmoe/CPMA_full_rc4.zip" 

RUN	cd /usr/local/games \
	&& unzip -d quake3_arena q3cpma.zip  \
	&& rm q3cpma.zip \
	&& cd quake3_arena \
	&& rm *.txt \
	&& rm h4* && rm -r superhudeditor-0.3.0 udt_gui_0.7.2_dll_1.3.0 docs 
	
RUN	cd /usr/local/games/quake3_arena \
	&& wget http://www.edawn-mod.org/binaries/quake3-1.32e.zip \
	&& unzip quake3-1.32e.zip  \
	&& chmod +x quake3e* 
	
RUN	cd /usr/local/games/quake3_arena \
	&& mv cpma cpma2 \
	&& curl https://cdn.playmorepromode.com/files/cpma/cpma-1.51-nomaps.zip > cpma.zip  	\
	&& unzip -a cpma.zip \
	&& rm -f cpma.zip 

COPY server.cfg /usr/local/games/quake3_arena/baseq3

EXPOSE 27960 27960/udp

CMD cd /usr/local/games/quake3_arena/ && ./quake3e.ded.x64 +set dedicated 2 +set fs_game cpma +exec server.cfg +set net_port 27960
