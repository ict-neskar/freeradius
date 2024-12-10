#! /bin/sh

export PATH="/opt/sbin:/opt/bin:$PATH"

sed -i "s/\$DATABASE_DIALECT/$DATABASE_DIALECT/g" /etc/raddb/mods-enabled/sql
sed -i "s/\$DATABASE_HOST/$DATABASE_HOST/g" /etc/raddb/mods-enabled/sql
sed -i "s/\$DATABASE_PORT/$DATABASE_PORT/g" /etc/raddb/mods-enabled/sql
sed -i "s/\$DATABASE_NAME/$DATABASE_NAME/g" /etc/raddb/mods-enabled/sql
sed -i "s/\$DATABASE_USER/$DATABASE_USER/g" /etc/raddb/mods-enabled/sql
sed -i "s/\$DATABASE_PASSWORD/$DATABASE_PASSWORD/g" /etc/raddb/mods-enabled/sql

sh /docker-entrypoint.sh "$@"