FROM ubuntu:latest
RUN apt update
RUN apt install -y nginx npm
RUN mkdir -p /var/www/html
COPY index.html /var/www
COPY index.html /var/www/html
COPY package.json /var/www/html
COPY package-lock.json /var/www/html
CMD ["nginx", "-g", "daemon off;"]
