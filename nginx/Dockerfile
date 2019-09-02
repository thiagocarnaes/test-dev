FROM nginx:alpine

#install nodejs
RUN apk add --update nodejs npm
WORKDIR /var/www
COPY ./api /var/www/api
COPY ./web /var/www/html
COPY ./nginx/ticket.conf /etc/nginx/conf.d/default.conf

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
