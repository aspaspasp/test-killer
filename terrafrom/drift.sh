#!/bin/bash

cat >/root/terraform_ws/drift.sh <<EOL
q_url=$(aws sqs get-queue-url --queue-name terraform-example-queue --region us-west-2 --query 'QueueUrl' --endpoint-url https://sqs.us-west-2.amazonaws.com --output text)
aws sqs untag-queue --queue-url $q_url --tag-keys "Environment" --region us-west-2
EOL