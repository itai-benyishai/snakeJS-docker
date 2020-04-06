from nginx
RUN rm /etc/nginx/conf.d/*
RUN rm /etc/nginx/nginx.conf
COPY nginx.conf /etc/nginx/
RUN mkdir -p /data/snakeJS
COPY snakeJS/ /data/snakeJS
EXPOSE 80
