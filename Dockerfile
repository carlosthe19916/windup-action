FROM quay.io/carlosthe19916/windup-action:master

ENV WINDUP_HOME /opt/jboss/windup

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
