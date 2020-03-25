FROM jboss/base-jdk:8

ENV WINDUP_VERSION 4.3.1.Final

# Add the JBoss Windup distribution to /opt, and make windup the owner of the extracted tar content
# Make sure the distribution is available from a well-known place
RUN cd $HOME && curl https://drive.google.com/file/d/12ygWJjuSq0f7AbyMmII3jJt2h8EuQJAB/view?usp=sharing>windup-distribution-$WINDUP_VERSION-offline.zip \
&& unzip windup-distribution-$WINDUP_VERSION-offline.zip \
&& mv $HOME/windup-distribution-$WINDUP_VERSION $HOME/windup \
&& rm windup-distribution-$WINDUP_VERSION-offline.zip

# Set the WINDUP_HOME env variable
ENV WINDUP_HOME /opt/jboss/windup

# Set the default command to run on boot
# This will boot the Windup CLI
CMD ["/opt/jboss/windup/bin/rhamt-cli"]


COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
