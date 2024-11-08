FROM wallabag/wallabag

ENV SYMFONY_ENV=prod \
    SYMFONY__ENV__DATABASE_DRIVER=pdo_sqlite \
    SYMFONY__ENV__DATABASE_HOST=localhost \
    SYMFONY__ENV__DATABASE_PORT=3306 \
    SYMFONY__ENV__DATABASE_NAME=wallabag \
    SYMFONY__ENV__DATABASE_USER=root \
    SYMFONY__ENV__DATABASE_PASSWORD=root \
    SYMFONY_FORCE_INSTALL=1 \
    SYMFONY__ENV__DOMAIN_NAME=https://wallabag.infodeal.fr \
    SYMFONY__ENV__MAILER_HOST=127.0.0.1 \
    SYMFONY__ENV__MAILER_USER=~ \
    SYMFONY__ENV__MAILER_PASSWORD=~ \
    SYMFONY__ENV__FROM_EMAIL=wallabag@example.com \
    SYMFONY__ENV__FOSUSER_REGISTRATION=false

EXPOSE 80
RUN mkdir -p /var/www/wallabag/var && \
    chmod -R 777 /var/www/wallabag/var

CMD ["apache2-foreground"]
