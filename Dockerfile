FROM jboss/keycloak:4.5.0.Final

# set the hostname to 'keycloak' because this is the containers name in docker-compose file
# this hostname is then used in the 'iss' field of the token which is relevant for the token validation
ENV KEYCLOAK_HOSTNAME keycloak

# deploy jambit theme to keycloak server
ADD --chown=jboss:root jambitTheme /opt/jboss/keycloak/themes/jambit

