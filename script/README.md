# Quake3 CPMA dedicated server

It is combination of two scripts which can be found:
- https://github.com/diegoulloao/ioquake3-mac-install/blob/master/install-quake3%2Bcpma%2Bmappack%2Bhdres%2Bliveaudio.sh
- https://github.com/m3fh4q/Quake3ArenaCPMADedicatedServerGuideLinux

It installs quake 3 arena with all required files + CPMA 1.51 (so the game version is same as server version)

Before triggering the script please make sure you have installed all required tools:

```
apt-get install -y screen zip unzip
```
<hr>
Installation (and running) - by default quake3_arena folder will be put to home dir:

```
wget https://github.com/michalbogdal/q3_server/raw/master/quake3cpma_install.sh
sh quake3cpma_install.sh
```

Start the server (with defautl dir and pass)

```
screen -S cpma_server1 -X stuff "cd ~/quake3_arena/ && ./quake3e.ded.x64 +set dedicated 2 +set fs_game cpma +exec server.cfg +set g_needpass 1 +set g_password ChangePass123 +seta sv_hostname Michal Q3CPMA server +set net_port 27960
"
```

Shutdown the server

```
screen -S cpma_server1 -X stuff "quit
"
```

<hr> 
Connecting to dedicated server (in quake3 console):

```
\password ChangePass123
\connect dedicated_sever_host
```
