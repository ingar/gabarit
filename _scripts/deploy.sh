bucket_name=$1

jekyll b -d _build
aws s3 sync ./_build s3://$bucket_name --acl=public-read --delete --cache-control='max-age=31536000' --exclude='*' --include='assets/*'
aws s3 sync ./_build s3://$bucket_name --acl=public-read --delete --cache-control='max-age=0, no-cache' --exclude='assets/*'
rm -rf _build
