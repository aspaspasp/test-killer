q_url =$(aws sqs get-queue-url --queue-name terraform-example-queue --region us-west-2 --query 'QueueUrl')
aws sqs get-queue-attributes --queue-url $q_url