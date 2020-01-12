FROM nginx:stable

EXPOSE 80
EXPOSE 443

COPY ./conf.d/server.conf /etc/nginx/conf.d/
COPY ./ssl/ /etc/ssl/