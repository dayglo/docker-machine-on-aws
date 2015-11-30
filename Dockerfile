FROM nginx
MAINTAINER Opsrobot X Automation Logic "george@opsrobot.co.uk"

COPY start.sh /
COPY nginx.conf /etc/nginx/
CMD /start.sh