#!/bin/bash

# export PGPASSWORD=${PGPASSWORD}
export AWS_ACCESS_KEY_ID=${AWS_ACCESS_KEY_ID}
export AWS_SECRET_ACCESS_KEY=${AWS_SECRET_ACCESS_KEY}
export AWS_DEFAULT_REGION=${aws_default_region}
export S3_BUCKET=andygodish
export S3_PATH=psql_k3s_backups
export TIMESTAMP=`date +%m-%d-%Y:%T`

pg_dump -Fc -h 10.0.0.14 -p 5432 -U k3s k3s -f /tmp/k3s.dump

aws s3 cp /tmp/k3s.dump s3://${S3_BUCKET}/${S3_PATH}/k3s.dump-${TIMESTAMP}
