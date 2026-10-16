FROM nginx
RUN rm -rf /usr/share/nginx/html/*

COPY . /usr/share/nginx/html

RUN chmod 755 /usr/share/nginx/html && \
    chmod 644 /usr/share/nginx/html/* && \
    chmod 755 /usr/share/nginx/html/images && \
    chmod 644 /usr/share/nginx/html/images/*

EXPOSE 80

CMD ["nginx" , "-g" ,"daemon off;"]