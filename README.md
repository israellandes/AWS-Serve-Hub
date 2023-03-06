# AWS-CLI Bash Script

Basic AWS-CLI Commands for Interacting with Amazon Web Services Using Bash

## Features

- Download/Setup AWS CLI Deps
- List Buckets
- Create Buckets
- Delete Buckets
- Download Buckets

## Requirements

- Ubuntu

## Setup

Simply clone repo and run the script with the **--config** flag and AWS cLI dependacies will download.
Your default aws config profile will appear in home directory '**~/aws-server-hub/aws-server-hub.sh --config**'

Please note that a AWS CLI profiel will be crated with the name **--profile devaccount**
To use AWS CLI commands by defualt make sure to specify the **--profile devaccount**, or you can modify it in your **~/.aws/** directory.

	~/aws-server-hub/aws-server-hub.sh --config
  
##  Usage

Run the main program with any of the following flags below, see **"--help"** for full manual page.

	~/aws-server-hub/aws-server-hub.sh 	--help
	~/aws-server-hub/aws-server-hub.sh 	--config
	~/aws-server-hub/aws-server-hub.sh 	--print
	~/aws-server-hub/aws-server-hub.sh 	--list-buckets
	~/aws-server-hub/aws-server-hub.sh 	--create-bucket
	~/aws-server-hub/aws-server-hub.sh 	--remove-bucket
	~/aws-server-hub/aws-server-hub.sh 	--download-bucket

## Questions

For all of questions please open an **[Issue](https://github.com/israellandes/wp-to-hugo-exporter/issues)** and I'd be happy to help.
