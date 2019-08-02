#on prend comme image de base ubuntu
FROM ubuntu:latest
#on fait les mise à jours et installe bind9
RUN apt update && apt upgrade -y && apt install bind9 -y


# on copie nos fichier de configuration dans les dossier de bind
COPY named.conf /etc/bind/
COPY named.conf.options /etc/bind/
COPY named.conf.zones /etc/bind/
COPY named.conf.local /etc/bind/
COPY db.local.wt12.ephec-ti.be /etc/bind/
COPY db.wt12.ephec-ti.be /etc/bind/
# on expose le port 53 pour tcp/udp
EXPOSE 53
# Exécutez le serveur au premier plan et forcez toute la journalisation sur stderr.
CMD named -g
