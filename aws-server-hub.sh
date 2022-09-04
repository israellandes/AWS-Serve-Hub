#!/bin/bash

aws_config()
{
sudo apt -y install awscli
aws configure --profile devaccount
}

print_configs()
{
echo
cat ~/.aws/config
cat ~/.aws/credentials
}

download_bucket()
{
yourbucket=backups-p2
youramount=10
yourbucket=$1
youramount=$2
aws s3api list-objects --bucket $yourbucket --max-items $youramount
}
download_bucket $1 $2
