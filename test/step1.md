Create a directory named terraform_ws

```shell
cd terraform_ws
```{{copy}}

Copy the code below to `~/main.tf`{{}} using the editor tab:

```shell
vi main.tf
```{{copy}}

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
```{{copy}}

```shell
terraform init
```{{copy}}

You should see output including these lines:


