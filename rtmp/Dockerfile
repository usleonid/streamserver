FROM tiangolo/nginx-rtmp
FROM restreamio/gstreamer

COPY nginx.conf /etc/nginx/nginx.conf
COPY index.html /www/
COPY .htpasswd /.htpasswd
COPY docker/build-gstreamer/install-dependencies /

RUN ["/install-dependencies"]