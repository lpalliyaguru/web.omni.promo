#!/bin/bash
npm run build
aws s3 cp dist/ s3://omni-promo --recursive
echo -e "\nInvalidating the cache"
aws cloudfront create-invalidation --distribution-id E149SCSG8ZO1F --paths /\*

echo  -e "\n---------------------------\n"
echo -e "\n\nPublishing completed!\n\n"
