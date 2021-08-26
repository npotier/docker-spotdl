# spotdl for Docker

This image allows to use [spotdl](https://github.com/spotDL/spotify-downloader) **V3** with Docker 


# Usage

The `spotdl` binary is at the entrypoint of the container. You can use it quite easily 

```bash
# Check the version of spotdl
$ docker run --rm -it -v $(pwd):/music nicolaspotier/spotdl:latest --version 

# Get help 
$ docker run --rm -it -v $(pwd):/music nicolaspotier/spotdl:latest --help

# Download a song 
$ docker run --rm -it -v $(pwd):/music nicolaspotier/spotdl:latest https://open.spotify.com/track/XXXX
```

## Real life example 

```bash
$ docker run --rm -it -v $(pwd):/music nicolaspotier/spotdl:latest \ 
  https://open.spotify.com/track/4cOdK2wGLETKBW3PvgPWqT

Fetching Song...
Gathering Spotify Metadata for: https://open.spotify.com/track/4cOdK2wGLETKBW3PvgPWqT
Found YouTube URL for "Rick Astley - Never Gonna Give You Up" : https://www.youtube.com/watch?v=lYBUbBu4W08

Rick Astley - Never Gonna Give You Up                               Done               ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 100% 0:00:00
```