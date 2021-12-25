# K3s Controlplane Database Backup

## Sample docker run command

```
docker run --platform linux/x86_64 \
  -e PGPASSWORD=${PGPASSWORD} \
  -e AWS_ACCESS_KEY_ID=${AWS_ACCESS_KEY_ID} \
  -e AWS_SECRET_ACCESS_KEY=${AWS_SECRET_ACCESS_KEY} \
  -e AWS_DEFAULT_REGION=${AWS_DEFAULT_REGION} \
  -e S3_BUCKET=andygodish \
  -e S3_PATH=psql_k3s_backups \
  andygodish/backup-db-job-x86_64:0.1
```