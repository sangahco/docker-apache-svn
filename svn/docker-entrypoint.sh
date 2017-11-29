#!/usr/bin/env bash
set -e

# Apache gets grumpy about PID files pre-existing
rm -f /var/run/apache2/apache2.pid

if ! [ "$(ls -A /mnt/svn)" ]; then
    echo "Creating repository [repos]..."
    svnadmin create --fs-type fsfs /mnt/svn/repos
fi

if [ $# -eq 0 ]; then
    # if no arguments are supplied start apache
    exec /usr/sbin/apache2ctl -DFOREGROUND
fi

exec "$@"