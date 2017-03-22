FROM asamalik/module-nginx-master

RUN mkdir -p /exports/hostfs/{usr/share,etc} && \
    cp -ar /usr/share/nginx /exports/hostfs/usr/share/ && \
    cp -ar /etc/nginx /exports/hostfs/etc

COPY files/nginx.conf /etc/nginx/nginx.conf
COPY files/nginx.conf /exports/hostfs/etc/nginx/nginx.conf
COPY files/service.template /exports/service.template

EXPOSE 80

CMD ["/usr/sbin/nginx"]
