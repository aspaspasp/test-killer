export aws credentials AWS_SECERET_ACCESS_KEY and AWS_ACCESS_KEY_ID of your AWS account.

```shell
terraform plan
```{{execute}}

you would land into an error...!
try solving it by yourself.
To constrain the provider version as suggested, add a `providers`{{}} block.
Let's do this for the
[template](https://developer.hashicorp.com/terraform/language/providers/configuration)
provider.



You should see some helpful output describing what actions Terraform will take,
including this line:

```text
Plan: 1 to add, 0 to change, 0 to destroy.
```
