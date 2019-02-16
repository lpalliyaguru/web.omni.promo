#!/bin/bash
npm run build
aws s3 cp dist/ s3://omni-promo --recursive
echo  -e "\n---------------------------\n"
echo -e "\n\nPublishing completed!\n\n"
