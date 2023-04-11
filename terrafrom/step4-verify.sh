#!/bin/bash
q_url=$(aws sqs get-queue-url --queue-name terraform-example-queue --region us-west-2 --query 'QueueUrl')
if [ ! -z $q_url ]; then echo done; fi