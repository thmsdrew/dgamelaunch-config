#!/bin/bash

assert-login-db-exists
sqlite3 "$LOGIN_DB" <<EOF | sort -f
SELECT username, email FROM dglusers ORDER BY username;
EOF
