#!/usr/bin/env sh


cat << EOF > /opt/conf.toml
[Mysql]
Db = "${MYSQL_DATABASE}"
Host = "${MYSQL_HOST}"
Port = "${MYSQL_PORT}"
Password = "${MYSQL_PASSWORD}"
User = "${MYSQL_USERNAME}"

[General]
SecretKey = "${SECRET_KEY}"
Hours = $HOURS
Concurrent = ${Concurrent}
EOF

/opt/yearning run 
