#!/bin/bash

# installation for Quake3 (with CPMA) dedicated server

# https://github.com/diegoulloao/ioquake3-mac-install/blob/master/install-quake3%2Bcpma%2Bmappack%2Bhdres%2Bliveaudio.sh
# https://github.com/m3fh4q/Quake3ArenaCPMADedicatedServerGuideLinux

echo "\n
++++++++++++++++++++++++++++++++++++++++++
Installing tools ...
++++++++++++++++++++++++++++++++++++++++++
\n"

apt-get install -y screen zip unzip

echo "\n
++++++++++++++++++++++++++++++++++++++++++
Installing quake 3 ...
++++++++++++++++++++++++++++++++++++++++++
\n"

BASE_Q3_DIR=~
SERVER_PASSWORD=ChangePass123

cd $BASE_Q3_DIR && mkdir quake3_arena/ && wget -O q3cpma.zip "https://www.dropbox.com/s/x5kmywtwq8nqmoe/CPMA_full_rc4.zip" && unzip -d quake3_arena q3cpma.zip  && cd quake3_arena && rm *.txt && rm h4* && rm -r superhudeditor-0.3.0 udt_gui_0.7.2_dll_1.3.0 docs


cd $BASE_Q3_DIR/quake3_arena/ && wget http://www.edawn-mod.org/binaries/quake3-1.32e.zip && unzip quake3-1.32e.zip && chmod +x quake3e*

echo "\n
++++++++++++++++++++++++++++++++++++++++++
Installing (replacing) CPMA 1.51 ...
++++++++++++++++++++++++++++++++++++++++++
\n"

cd $BASE_Q3_DIR/quake3_arena/ && mv cpma cpma2
cd $BASE_Q3_DIR/quake3_arena/ && curl https://cdn.playmorepromode.com/files/cpma/cpma-1.51-nomaps.zip > cpma.zip && unzip -a cpma.zip && rm -f cpma.zip

wget -O $BASE_Q3_DIR/quake3_arena/baseq3/server.cfg https://www.dropbox.com/s/syohxlyr8da2hhm/default_cpma_server.cfg

echo "\n
++++++++++++++++++++++++++++++++++++++++++
INSTALLED, triggering ...
++++++++++++++++++++++++++++++++++++++++++
\n"

screen -dmS cpma_server1

screen -S cpma_server1 -X stuff "cd $BASE_Q3_DIR/quake3_arena/ && ./quake3e.ded.x64 +set dedicated 2 +set fs_game cpma +exec server.cfg +set g_needpass 1 +set g_password $SERVER_PASSWORD +seta sv_hostname Michal Q3CPMA server +set net_port 27960
"

echo "\n
++++++++++++++++++++++++++++++++++++++++++
FINISHED
++++++++++++++++++++++++++++++++++++++++++
\n"
