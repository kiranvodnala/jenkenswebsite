FROM ubuntu
RUN apt-get update -y
RUN apt-get install apache2 -y
RUN apt install git -y
RUN rm -f /var/www/html/index.html
RUN git clone https://github.com/kiranvodnala/jenkenswebsite.git /var/www/html
ENTRYPOINT apachectl -D FOREGROUD
