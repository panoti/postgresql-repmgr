FROM bitnami/postgresql-repmgr:17

USER root
# RUN sed -i '651i     info "debug vars: $REPMGR_CURRENT_PRIMARY_HOST:$REPMGR_CURRENT_PRIMARY_PORT"' /opt/bitnami/scripts/librepmgr.sh
RUN sed -i '651i\    info "debug vars: $REPMGR_CURRENT_PRIMARY_HOST:$REPMGR_CURRENT_PRIMARY_PORT"' /opt/bitnami/scripts/librepmgr.sh
USER 1001
