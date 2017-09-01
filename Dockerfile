FROM tecadmin/ubuntu-ssh:16.04
LABEL maintainer="rahul@tecadmin.net"

RUN apt-get update \
   && apt-get install -y apache2

COPY html/* /var/www/html/

WORKDIR /var/www/html
CMD ["apachectl", "-D", "FOREGROUND"]
EXPOSE 80
