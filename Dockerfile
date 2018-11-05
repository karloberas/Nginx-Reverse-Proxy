FROM nginx:latest

RUN mkdir /etc/nginx/sites-enabled

COPY ./nginx.conf /etc/nginx/
COPY ./reverse-proxy.conf /etc/nginx/sites-enabled/

RUN service nginx restart

EXPOSE 3000