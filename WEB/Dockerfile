FROM ubuntu:latest

RUN apt update && apt upgrade -y && DEBIAN_FRONTEND=noninteractive apt install -y apache2 php php-mysql nano 
RUN a2enmod ssl

COPY azzouz.ephec-ti.be.conf /etc/apache2/sites-available

RUN ln -s /etc/apache2/sites-available/azzouz.ephec-ti.be.conf /etc/apache2/sites-enabled

RUN mkdir /var/www/azzouz.ephec-ti.be
RUN mkdir /var/www/azzouz.ephec-ti.be/css
RUN mkdir /var/www/azzouz.ephec-ti.be/img

COPY azzouz/azzouz.html /var/www/azzouz.ephec-ti.be/index.html
COPY azzouz/css/style.css  /var/www/azzouz.ephec-ti.be/css
COPY azzouz/img/bg.jpg /var/www/azzouz.ephec-ti.be/img

EXPOSE 80 443

CMD apachectl -DFOREGROUND
