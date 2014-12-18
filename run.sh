#!/bin/sh

CONF_DIR=/data/conf

if [ ! -f $CONF_DIR/nginx.conf ]; then
    mkdir -p $CONF_DIR

    cp /etc/nginx/default/nginx.conf $CONF_DIR
    
    mkdir -p $CONF_DIR/conf.d

    cp /etc/nginx/default/default.conf $CONF_DIR/conf.d

    mkdir -p /data/log

    cp -r /usr/share/nginx/www /data
fi

exec /usr/sbin/nginx -c $CONF_DIR/nginx.conf
