FROM nginx:latest
WORKDIR /app
COPY ./index.html /var/www/share/html/
COPY ./index.html /usr/share/nginx/html/
CMD ["nginx","-g","daemon off;"]
EXPOSE 80
