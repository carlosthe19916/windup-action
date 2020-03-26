FROM carlosthe19916/windup:v2

ENV WINDUP_HOME /opt/jboss/windup

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
