# Dockerfile

FROM nginx:1.10.1

MAINTAINER gerry 20150126


ADD run.sh /run.sh
RUN chmod +x /*.sh
ADD ./nginx.conf /etc/nginx/
VOLUME ["/etc/nginx/sites-enabled", "/etc/nginx/certs", "/etc/nginx/conf.d", "/var/log/nginx"]

WORKDIR /etc/nginx
CMD ["/run.sh"]

EXPOSE 80
EXPOSE 443
