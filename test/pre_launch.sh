curl -o terraform.zip -fsSL https://releases.hashicorp.com/terraform/1.1.9/terraform_1.1.9_linux_amd64.zip && unzip terraform.zip && install -t /usr/local/bin terraform
apt  install -y awscli
touch ~/main.tf 