
```shell
chmod +x /root/terraform_ws/drift.sh
bash /root/terraform_ws/drift.sh
```{{copy}}

the script you ran made some changes manually on the console.
run plan to detect the change...

```shell
terraform plan
```{{copy}}

Q1. whats was the change ...
- [ ] A. delay_seconds
- [ ] B. max_message_size
- [ ] C. message_retention_seconds
- [ ] D. tags
<details>
  <summary>Answer</summary>
  <p><b>D</b></p>
</details>



Verify in AWS console once.

```shell
terraform apply --auto-approve
```{{copy}}

Verify in AWS console once agian to see the infra is restated.

```shell
terraform state list
```{{copy}}

```shell
terraform state show
```{{copy}}