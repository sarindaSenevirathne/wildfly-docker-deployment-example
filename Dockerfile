# FROM jboss/wildfly:latest

# ADD node-info.war /opt/jboss/wildfly/standalone/deployments/

# EXPOSE 8080

# USER 10014

# CMD ["/opt/jboss/wildfly/bin/standalone.sh", "-b", "0.0.0.0", "-bmanagement", "0.0.0.0"]

FROM tomee:latest

COPY node-info.war /usr/local/tomee/webapps/node-info.war

EXPOSE 8080

USER 10014

CMD ["catalina.sh", "run"]