FROM nginx:1.21.1-alpine
MAINTAINER Alexandre Machado <alexandre2602@gmail.com>
WORKDIR /etc/nginx
LABEL Description="BLOG90 Webserver - v1.0"
ADD nginx.conf /etc/nginx/nginx.conf
ADD default /etc/nginx/sites-available/default
ADD index.html /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
