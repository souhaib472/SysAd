FROM ubuntu:latest

RUN apt update && apt upgrade -y && DEBIAN_FRONTEND=noninteractive apt install -y apache2 php php-mysql nano 
RUN a2enmod ssl

COPY azzouz.ephec-ti.be.conf /etc/apache2/sites-available
COPY b2b.azzouz.ephec-ti.be.conf /etc/apache2/sites-available
COPY intranet.azzouz.ephec-ti.be.conf /etc/apache2/sites-available

RUN ln -s /etc/apache2/sites-available/azzouz.ephec-ti.be.conf /etc/apache2/sites-enabled
RUN ln -s /etc/apache2/sites-available/b2b.azzouz.ephec-ti.be.conf /etc/apache2/sites-enabled
RUN ln -s /etc/apache2/sites-available/intranet.azzouz.ephec-ti.be.conf  /etc/apache2/sites-enabled

RUN mkdir /var/www/b2b.azzouz.ephec-ti.be
RUN mkdir /var/www/b2b.azzouz.ephec-ti.be/css
RUN mkdir /var/www/b2b.azzouz.ephec-ti.be/js
RUN mkdir /var/www/b2b.azzouz.ephec-ti.be/img

RUN mkdir /var/www/azzouz.ephec-ti.be
RUN mkdir /var/www/azzouz.ephec-ti.be/css
RUN mkdir /var/www/azzouz.ephec-ti.be/img

RUN mkdir /var/www/intranet.azzouz.ephec-ti.be

COPY azzouz/azzouz.html /var/www/azzouz.ephec-ti.be/index.html
COPY azzouz/css/style.css  /var/www/azzouz.ephec-ti.be/css
COPY azzouz/img/bg.jpg /var/www/azzouz.ephec-ti.be/img


COPY b2b/b2b.html /var/www/b2b.azzouz.ephec-ti.be/index.html
COPY b2b/css/style.css  /var/www/b2b.azzouz.ephec-ti.be/css
COPY b2b/img/bg.jpg  /var/www/b2b.azzouz.ephec-ti.be/img
COPY b2b/img/santa.png  /var/www/b2b.azzouz.ephec-ti.be/img
COPY b2b/img/bell.png  /var/www/b2b.azzouz.ephec-ti.be/img
COPY b2b/js/snowstorm-min.js  /var/www/b2b.azzouz.ephec-ti.be/js

COPY Intranet/intranet.html /var/www/intranet.azzouz.ephec-ti.be/index.html

EXPOSE 80 443

CMD apachectl -DFOREGROUND
