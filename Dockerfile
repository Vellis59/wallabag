FROM wallabag/wallabag

ENV SYMFONY_ENV=prod \
    SYMFONY__ENV__DATABASE_DRIVER=pdo_sqlite \
    SYMFONY__ENV__DATABASE_HOST=localhost \
    SYMFONY__ENV__DATABASE_PORT=3306 \
    SYMFONY__ENV__DATABASE_NAME=wallabag \
    SYMFONY__ENV__DATABASE_USER=root \
    SYMFONY__ENV__DATABASE_PASSWORD=root \
    SYMFONY_FORCE_INSTALL=1

EXPOSE 80

RUN mkdir -p /var/www/wallabag/var && \
    chmod -R 777 /var/www/wallabag/var
