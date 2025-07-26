#!/bin/bash

##########################
# Author :Amit Kumar
# Script to report AWS resource usage
#
##########################

# Tracking
# AWS S3
# AWS EC2
# AWS Lambda
# AWS IAM Users
#

set -x
# list the aws s3 buckets
#
echo "Print list of S3 buckets"
aws s3 ls

# list EC2 instances
#
echo "Print list of ec2 instances"
aws ec2 describe-instances

# list lambda
aws lambda list-functions

#list IAM Users
aws iam list-users

