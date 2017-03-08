#!/bin/bash

set -eu

echo -n ${SERVICE_ACCOUNT_KEY} | base64 -d > /app/service.json

exec /app/cloud_sql_proxy -credential_file=/app/service.json -instances=${INSTANCES}
