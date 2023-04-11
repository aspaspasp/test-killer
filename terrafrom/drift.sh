#!/bin/bash
q_url=$(aws sqs get-queue-url --queue-name terraform-example-queue --region us-west-2 --query 'QueueUrl')
aws sqs untag-queue --queue-url $q_url --tag-keys "Environment"