# Quake3 CPMA dedicated server

It is combination of two scripts which can be found:
- https://github.com/diegoulloao/ioquake3-mac-install/blob/master/install-quake3%2Bcpma%2Bmappack%2Bhdres%2Bliveaudio.sh
- https://github.com/m3fh4q/Quake3ArenaCPMADedicatedServerGuideLinux

It installs quake 3 arena with all required files + CPMA 1.51 (so the game version is same as server version)

Start the server

```
screen -S cpma_server1 -X stuff "cd $BASE_Q3_DIR/quake3_arena/ && ./quake3e.ded.x64 +set dedicated 2 +set fs_game cpma +exec server.cfg +set g_needpass 1 +set g_password $SERVER_PASSWORD +seta sv_hostname Michal Q3CPMA server +set net_port 27960
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
\password somePassword
\connect dedicated_sever_host
```
