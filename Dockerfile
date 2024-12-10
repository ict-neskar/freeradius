FROM freeradius/freeradius-server:3.2.6-alpine

RUN apk add --no-cache freeradius-mysql

# Copy the configuration files
COPY raddb/radiusd.conf /etc/raddb/
COPY entrypoint.sh /etc/raddb/entrypoint.sh

# Copy enabled mods and make a symlink to mods-available
COPY raddb/mods-available/sql.conf /etc/raddb/mods-enabled/sql

RUN mkdir -p /etc/raddb/sql/mysql && \
    chmod +x /etc/raddb/entrypoint.sh

ENTRYPOINT [ "/etc/raddb/entrypoint.sh" ]