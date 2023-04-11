Create a directory named terraform_ws

```shell
mkdir terraform_ws && cd terraform_ws
```{{execute}}

Copy the code below to `~/main.tf`{{}} using the editor tab:

```shell
vi main.tf
```{{execute}}

press i to get to insert mode and past the contecnt in main.tf

```hcl
resource "aws_sqs_queue" "terraform_queue" {
  name                      = "terraform-example-queue"
  delay_seconds             = 90
  max_message_size          = 2048
  message_retention_seconds = 86400
  receive_wait_time_seconds = 10

  tags = {
    Environment = "production"
  }
}

provider "aws" {
region = "us-west-2"
}

```{{execute}}

```shell
terraform init
```{{execute}}

You should see output including these lines:

```text
Initializing the backend...

Initializing provider plugins...
- Finding latest version of hashicorp/aws...
- Installing hashicorp/aws v4.62.0...
- Installed hashicorp/aws v4.62.0 (signed by HashiCorp)

```{{}}


