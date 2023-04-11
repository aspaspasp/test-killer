#!/bin/bash
q_url=$(aws sqs get-queue-url --queue-name terraform-example-queue --region us-west-2 --query 'QueueUrl')
if [ -z "$q_url" ]
then 
 exit 1
else
 done
fi
# aws sqs get-queue-attributes --queue-url $q_url