bucket_name=$1

aws s3 mb s3://$bucket_name
aws s3 website s3://$bucket_name --index-document index.html
