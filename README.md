# Run gnome-builder from Docker

## Step 1: Dockerfile 
```
FROM ubuntu:16.10

RUN apt-get update && apt-get install -y gnome-builder

RUN useradd waltervargas

USER waltervargas
ENV HOME /home/waltervargas
CMD /usr/bin/gnome-builder
```

## Step 2: Docker build
```
❯ docker build -t gnome-builder .
```

## Step 3: Docker run
```
❯ docker run -ti --rm -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v /home/waltervargas:/home/waltervargas  gnome-builder
```
