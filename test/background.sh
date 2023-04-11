#!/bin/bash

set -x # to test stderr output in /var/log/killercoda

echo starting... # to test stdout output in /var/log/killercoda

curl -o terraform.zip -fsSL https://releases.hashicorp.com/terraform/1.1.9/terraform_1.1.9_linux_amd64.zip && unzip terraform.zip && install -t /usr/local/bin terraform
apt  install -y awscli

sleep 5 # some long running background task

touch /tmp/finished
