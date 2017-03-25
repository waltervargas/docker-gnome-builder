FROM ubuntu:16.10

RUN apt-get update && apt-get install -y gnome-builder

RUN useradd waltervargas

USER waltervargas
ENV HOME /home/waltervargas
CMD /usr/bin/gnome-builder