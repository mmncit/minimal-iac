# minimal-iac

Spike to automate provisioning of AWS cloud infrastructure using terraform

## Deploy instance

### Set secrets via environment variables

```sh
export TF_VAR_access_key=<aws_access_key_id>
export TF_VAR_secret_key=<aws_secret_key>
```

### Initialize the backend

```sh
terraform init
```

### Generate an execution plan (dry-run)

```sh
terraform plan
```

### Perform action

```sh
terraform apply
```

## Modify instance

do some changes in resources and perform plan then apply

## Delete instance

```sh
terraform destroy
```
