# Quake3 CPMA dedicated server - Docker

It is combination of two scripts which can be found:
- https://github.com/diegoulloao/ioquake3-mac-install/blob/master/install-quake3%2Bcpma%2Bmappack%2Bhdres%2Bliveaudio.sh
- https://github.com/m3fh4q/Quake3ArenaCPMADedicatedServerGuideLinux

It installs quake 3 arena with all required files + CPMA 1.51 (so the game version is same as server version)

# Config
Please remember to change passwords

```
set g_password "ChangeMe123"
```

# Building

```
docker build -t q3server .
```

# Running

```
docker run -p 27960:27960/udp -d q3server
```
