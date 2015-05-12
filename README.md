# Gabarit

Static site template using Jekyll, Jekyll Assets, targeted at S3 hosting.

## Dependencies
- [AWS S3](http://aws.amazon.com/s3/) account for hosting
- [AWS CLI](http://aws.amazon.com/cli/) with credentials for S3 bucket manipulation.  To test your CLI, you can run `aws s3 ls` and make sure you see the account you're expecting.

To get set up:

- Duplicate this repo as a template for your project.  An easy way to do
  this is to use the `carbonfive/raygun` gem: 
  ```
  gem install raygun
  
  raygun -p ingar/gabarit <project name>
  ```

- Create a site bucket at AWS configured for static website hosting.  A helper script is included:
  ```
  ./_scripts/make_site_bucket.sh <bucket name>
  ```
  The bucket name should be the hostname of your website.

- Deploy: 
  ```
  ./_scripts/deploy.sh <bucket_name>
  ```

