#
# rpidockers/nginx Dockerfile
#
FROM sdhibit/rpi-raspbian 

# Install nginx
RUN \
  apt-get update && \
  apt-get -y install nginx

VOLUME ["/data"]
ADD nginx.conf /etc/nginx/default/nginx.conf
ADD default.conf /etc/nginx/default/default.conf

ADD run.sh /bin/run.sh
CMD /bin/run.sh

