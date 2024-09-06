FROM nginx:latest
WORKDIR /app
COPY ./index.html /var/www/share/html/
CMD ["nginx","-g","daemon off;"]
EXPOSE 80
