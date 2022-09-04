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

