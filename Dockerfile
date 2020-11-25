FROM quay.io/carlosthe19916/windup-action:5.1.0.Beta1

ENV WINDUP_HOME /opt/jboss/windup

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
