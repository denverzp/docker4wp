FROM wordpress:5.6.0-php7.4-apache

RUN apt-get update \
    && apt-get install --assume-yes gettext-base \
    && a2enmod headers \
    && a2enmod rewrite \
    # load mhsendmail from Github
    && curl --location --output /usr/local/bin/mhsendmail https://github.com/mailhog/mhsendmail/releases/download/v0.2.0/mhsendmail_linux_amd64 \
    && chmod +x /usr/local/bin/mhsendmail \
    && echo 'sendmail_path="/usr/local/bin/mhsendmail --smtp-addr=mailhog_server:1025 --from=no-reply@docker.dev"' > /usr/local/etc/php/conf.d/mailhog.ini

# Alternative way - use Golang for get mhsendmail

#RUN apt-get update \
#    && apt-get install --no-install-recommends --assume-yes --quiet git \
#    && curl -Lsf 'https://storage.googleapis.com/golang/go1.8.3.linux-amd64.tar.gz' | tar -C '/usr/local' -xvzf -
#
#ENV PATH /usr/local/go/bin:$PATH
#
#RUN go get github.com/mailhog/mhsendmail \
#    && cp /root/go/bin/mhsendmail /usr/bin/mhsendmail \
#    && echo 'sendmail_path="/usr/local/bin/mhsendmail --smtp-addr=mailhog_server:1025 --from=no-reply@docker.dev"' > /usr/local/etc/php/conf.d/mailhog.ini
