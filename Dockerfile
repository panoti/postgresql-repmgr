FROM bitnami/postgresql-repmgr:17

USER root

RUN sed -i '651i\    info "debug vars: $REPMGR_CURRENT_PRIMARY_HOST:$REPMGR_CURRENT_PRIMARY_PORT"' /opt/bitnami/scripts/librepmgr.sh \
  && sed -i '658i\        info "repmgr_execute ($REPMGR_PASSWORD): ${flags[@]}"' /opt/bitnami/scripts/librepmgr.sh \
  && mkdir -p /var/lib/apt/lists/partial \
  && apt-get update \
  && apt-get install -yq iputils-ping nano

USER 1001
