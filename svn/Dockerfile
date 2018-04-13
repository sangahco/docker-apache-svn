FROM sangah/apache-base:0.1
LABEL maintainer="Emanuele Disco <emanuele.disco@gmail.com>"

COPY . /usr/local/src/

ENV SVNROOT=/mnt/svn

RUN set -e && \

    # installing required packages
    apt-get update && apt-get install -y \
        subversion \
        libapache2-mod-svn \
        libhttp-message-perl \
        libwww-perl \
        libjson-perl \
        curl && \
    mkdir -p ${SVNROOT} && \
    cp /usr/local/src/svn.conf /etc/apache2/sites-available/svn.conf && \
    cp /usr/local/src/.htaccess /etc/apache2/.htaccess && \
    /usr/sbin/a2enmod dav_svn && \
    /usr/sbin/a2enmod authz_svn && \
    /usr/sbin/a2dismod mpm_event && \
    /usr/sbin/a2enmod mpm_worker && \
    /usr/sbin/a2ensite svn && \
    # cleaning
    rm -rf /var/lib/apt/lists/* && \
    rm -rf /tmp/* && \
    rm -rf /usr/local/src

COPY ./docker-entrypoint.sh /entrypoint.sh
RUN chmod a+x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
WORKDIR ${SVNROOT}