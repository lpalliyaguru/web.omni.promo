#!/bin/bash
npm run build
aws s3 cp dist/ s3://omni-promo --recursive
