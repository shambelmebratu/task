#!/bin/bash
export AWS_DEFAULT_REGION="us-east-1"
BUCKET_NAME="shambl-mebratu-bucket"
LOCAL_WEBSITE_DIRECTORY="/Users/imac/shambelmebratu.github.io"
aws s3 sync $LOCAL_WEBSITE_DIRECTORY s3://$BUCKET_NAME --acl public-read  --exclude '.git/*'

# Invalidate CloudFront cache if you're using CloudFront
# DISTRIBUTION_ID="your-cloudfront-distribution-id"
# aws cloudfront create-invalidation --distribution-id $DISTRIBUTION_ID --paths "/*"

