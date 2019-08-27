#une image ubuntu est prise pour OS de base
FROM ubuntu:latest

#Installation de asterisk
#téléchargement des mises à jour, des dépendances, de asterisk, et config de prérequis
RUN apt update -y && apt upgrade -y &&  \
    DEBIAN_FRONTEND=noninteractive apt-get -y install build-essential wget libssl-dev libncurses5-dev nano \
    libnewt-dev libxml2-dev uuid-dev \
    libsqlite3-dev libjansson-dev  \
    subversion && \
    wget http://downloads.asterisk.org/pub/telephony/asterisk/asterisk-15-current.tar.gz && \
    tar -xzvf asterisk-15-current.tar.gz &&  \
    cd asterisk-15.*/  && \
    ./contrib/scripts/get_mp3_source.sh && \
    ./configure && \
    make menuselect.makeopts && \
    menuselect/menuselect \
    --enable CORE-SOUNDS-FR-ULAW \
    --enable MOH-OPSOUND-ULAW \
    --enable EXTRA-SOUNDS-FR-ULAW \
    menuselect.makeopts && \
    make && make install  && make samples && make config && \
    apt-get clean
    
#configuration du comportement des connexions via le serveur
COPY voip/extensions.conf /etc/asterisk/extensions.conf

#configuration pour les canaux SIP Asterisk, pour les appels entrants et sortants.
COPY voip/sip.conf /etc/asterisk/sip.conf

#configuration visant à définir un utilisateur
COPY voip/users.conf /etc/asterisk/users.conf

#configuration de la messagerie vocale
COPY voip/voicemail.conf /etc/asterisk/voicemail.conf

#configuration du canal qui permettrais une connection à une autre entreprise
COPY voip/iax.conf /etc/asterisk/iax.conf

#exposition des port udp
EXPOSE 5060/udp
EXPOSE 10000-20000/udp

# execute asterisk en tache de fond
CMD asterisk -fvvvvvvvvvr
