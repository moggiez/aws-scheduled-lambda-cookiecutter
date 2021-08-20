# aws-scheduled-lambda-cookiecutter

A cookiecutter for generating an AWS Lambda which is triggerd on a schedule configured in EventBridge.

# Installing

[Installation instructions](https://cookiecutter.readthedocs.io/en/latest/installation.html)

# Cutting a new API project

```bash
cookiecutter git@github.com:moggiez/aws-scheduled-lambda-cookiecutter.git
```

# Using S3 Terraform backend for the infrastructure

- Uncomment line 9 in `infra/main.tf`
- Make sure that the backend storage was created - check whether `moggies-io-<your-project-name>` is present in [backends list](https://github.com/moggiez/terraform-backend/blob/master/main.tf#L14)

# Commiting to Github

- Set repository secrets

```bash
AWS_ACCESS_KEY=<aws access key>
AWS_SECRET_KEY=<aws secret key>
AWS_ACCOUNT_ID=<aws account id>
SSH_PRIVATE_KEY=<private ssh key authorized to clone from github> # On OSX type `cat ~/.ssh/id_rsa|pbcopy ` to copy private ssh key to clipboard
GH_PAT_NPM=<pat value> # a github personal access token with the rights to read packages from GH private npm
```

- Create a new github repo with name <your-project-name>
- Run the commands below before first commit:

```bash
make infra-fmt
make lint
make test
```

- Commit and push the project to that repository
