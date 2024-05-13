FROM ubuntu:latest

RUN apt update \
    && apt install -y apache2 \
                       php \
                       libapache2-mod-php \
                       php-mysql \
    && apt clean

RUN apt install -y apache2-utils 

RUN apt clean 

COPY team.php /var/www/html/

COPY index.html /var/www/html/

COPY style.css /var/www/html/

EXPOSE 80

CMD ["apache2ctl", "-D", "FOREGROUND"]
