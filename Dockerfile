FROM quay.io/carlosthe19916/windup-action:5.0.1.Final

ENV WINDUP_HOME /opt/jboss/windup

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
