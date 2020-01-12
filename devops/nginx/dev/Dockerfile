FROM nginx:stable

EXPOSE 80
EXPOSE 443

RUN rm /etc/nginx/conf.d/default.conf
COPY ./conf.d/server.conf/ /etc/nginx/conf.d/
COPY ./ssl/ /etc/ssl/