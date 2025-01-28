FROM docker.io/sameermaner/ubuntu-git
RUN apt-get update -y
RUN apt-get install apache2 -y
COPY fbweb/ /var/www/html/
RUN service apache2 restart && /bin/bash
