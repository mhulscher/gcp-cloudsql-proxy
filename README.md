# GCP Cloud SQL Proxy

This docker image adds environment-variable configuration to the [cloudsql-proxy](https://github.com/GoogleCloudPlatform/cloudsql-proxy).

## Configuration

|Environment variable|Description
|---|---
|`SERVICE_ACCOUNT_KEY`|A base64 encoded string of a JSON service-account key
|`INSTANCES`|The value off the `-instances` argument passed when starting the cloud-sql-proxy
