#!/bin/bash

bold=`echo -en "\e[1m"`
 underline=`echo -en "\e[4m"`
 dim=`echo -en "\e[2m"`
 strickthrough=`echo -en "\e[9m"`
 blink=`echo -en "\e[5m"`
 reverse=`echo -en "\e[7m"`
 hidden=`echo -en "\e[8m"`
 normal=`echo -en "\e[0m"`
 black=`echo -en "\e[30m"`
 red=`echo -en "\e[31m"`
 green=`echo -en "\e[32m"`
 orange=`echo -en "\e[33m"`
 blue=`echo -en "\e[34m"`
 purple=`echo -en "\e[35m"`
 aqua=`echo -en "\e[36m"`
 gray=`echo -en "\e[37m"`
 darkgray=`echo -en "\e[90m"`
 lightred=`echo -en "\e[91m"`
 lightgreen=`echo -en "\e[92m"`
 lightyellow=`echo -en "\e[93m"`
 lightblue=`echo -en "\e[94m"`
 lightpurple=`echo -en "\e[95m"`
 lightaqua=`echo -en "\e[96m"`
 white=`echo -en "\e[97m"`
 default=`echo -en "\e[39m"`
 BLACK=`echo -en "\e[40m"`
 RED=`echo -en "\e[41m"`
 GREEN=`echo -en "\e[42m"`
 ORANGE=`echo -en "\e[43m"`
 BLUE=`echo -en "\e[44m"`
 PURPLE=`echo -en "\e[45m"`
 AQUA=`echo -en "\e[46m"`
 GRAY=`echo -en "\e[47m"`
 DARKGRAY=`echo -en "\e[100m"`
 LIGHTRED=`echo -en "\e[101m"`
 LIGHTGREEN=`echo -en "\e[102m"`
 LIGHTYELLOW=`echo -en "\e[103m"`
 LIGHTBLUE=`echo -en "\e[104m"`
 LIGHTPURPLE=`echo -en "\e[105m"`
 LIGHTAQUA=`echo -en "\e[106m"`
 WHITE=`echo -en "\e[107m"`
 DEFAULT=`echo -en "\e[49m"`
 
clear
# 
#echo "${purple}This is purple"
#echo "${red}This is red"
#echo "$normal"
# 
#echo "${underline}This is underlined"
#echo "${blue}This is underlined and blue"
#echo "$normal"
# 
#echo "${GREEN}The background is green"
#echo "${lightblue}and the text is light blue"
#echo "$normal"
# 
#echo "${strickthrough}This has a line through it"
#echo "$normal"
##################################################################################################################################

############################################################
# NSA Help -h                                                #
############################################################
Help()
{
   clear
   # Display NSA Help
   echo "---- "${lightgreen}""${bold}"WELCOME TO AWS Server Hub!"${normal}" ----"
   echo
   echo ""${bold}"Syntax: ["${white}"~/AWS-Server-Hub/aws-server-hub.sh --config options:"${normal}""
   echo
   echo "["${lightyellow}"--help"${normal}"|"${lightyellow}"config"${normal}"|"${lightyellow}"print"${normal}"|"${lightyellow}"list-buckets"${normal}"|"${lightyellow}"create-bucket"${normal}" "${lightpurple}"ARG1 ARG2"${normal}"]"
   echo
   echo "["${lightyellow}"remove-bucket"${lightpurple}"ARG1"${normal}"|"${lightyellow}"download-bucket"${normal}""${lightpurple}" ARG1"${normal}"]"
   echo
   echo ""${aqua}""${bold}"-------------------------------------------------------------------------------------"$normal""
   echo "---------"$normal" "${lightgreen}""${bold}"START HERE:"${normal}" ----------"${normal}""
   echo
   echo ""${aqua}""${bold}"----------------------------------------------------------------"${normal}""
   echo " "${lightyellow}""${bold}"--help"$normal" - Print this Help."
   echo "       "${gray}"* This command prints the Help Manual"$normal""
   echo "       "${gray}"* Ex. --help"${normal}""
   echo "       "${gray}"* Exit the Manual with 'q'."${normal}""
   echo "       "${gray}"* No ARGS"${normal}""
   echo ""${aqua}""${bold}"----------------------------------------------------------------"${normal}""
   echo
   echo ""${aqua}""${bold}"-------------------------------------------------------------------------------------"$normal""
   echo "--------- "${lightyellow}""${lightgreen}""${bold}"INSTALLATION and AWS CLI Profile Setup"${normal}" ---------"
   echo
   echo ""${aqua}""${bold}"----------------------------------------------------------------"${normal}""
   echo " "${lightyellow}""${bold}"--config"${normal}" - Install Dependancies Sets Up AWS Profile."
   echo "       "${gray}"* This command will install all required dependacies and setup a --profile "devaccount". (Ubuntu Tested)"
   echo "       "${gray}"* Ex. --config"${normal}""
   echo "       "${gray}"* No ARGS"
   echo ""${aqua}""${bold}"----------------------------------------------------------------"${normal}""
   echo
   echo ""${aqua}""${bold}"----------------------------------------------------------------"${normal}""
   echo " "${lightyellow}""${bold}"--print"${normal}" - Print AWS CLI Profile Configs."
   echo "       "${gray}"* This command will print your current AWS CLI Profile configs listed under your ~/.aws/ directory."${normal}""
   echo "       "${gray}"* Ex. --final"${normal}""
   echo "       "${gray}"* No ARGS"
   echo ""${aqua}""${bold}"----------------------------------------------------------------"${normal}""
   echo
   echo ""${aqua}""${bold}"-------------------------------------------------------------------------------------"${normal}""
   echo "--------- "${lightgreen}""${bold}"AWS Server Hub Commands"${normal}"----------"
   echo
   echo ""${aqua}""${bold}"----------------------------------------------------------------"${normal}""
   echo " "${lightyellow}""${bold}"--list-buckets"${normal}" - Lists All S3 Buckets."${lightpurple}"ARG1"${normal}""
   echo "       "${gray}"* This command will print all AWS S3 Buckets you currently have."${lightpurple}"ARG1"${normal}""
   echo "       "${gray}"* Ex. --list-buckets"${normal}""
   echo "       "${gray}"* No ARGS"
   echo ""${aqua}""${bold}"----------------------------------------------------------------"${normal}""
   echo
   echo ""${aqua}""${bold}"----------------------------------------------------------------"${normal}""
   echo " "${lightyellow}""${bold}"--create-bucket"${normal}" - Creates an AWS S3 Bucket? "${lightpurple}"ARG1" "ARG2"${normal}""
   echo "       "${gray}"* This command is asking you to choose 1 or 2 arguments: "${lightpurple}"ARG1" "ARG2"${normal}""
   echo "       "${gray}"* "${lightpurple}"ARG1"${normal}" "${gray}"- Is the name of your S3 bucket. "${normal}""
   echo "       "${gray}"* "${lightpurple}"ARG2"${normal}" "${gray}"- Is the region for your S3 bucket, default region is "us-west-1" if no "${lightpurple}"""ARG2"${normal}" is specified. "${normal}""
   echo "       "${gray}"* Ex. --create-bucket "test-bucket-60994" "us-west-2""${normal}""
   echo ""${aqua}""${bold}"----------------------------------------------------------------"${normal}""
   echo
   echo ""${aqua}""${bold}"----------------------------------------------------------------"${normal}""
   echo " "${lightyellow}""${bold}"--remove-bucket"${normal}" - Choose Which AWS S3 Bucket to Delete "${lightpurple}"ARG1"${normal}""
   echo "       "${gray}"* Enter the name of the bucket you want to remove. "${lightpurple}"ARG1"${normal}""
   echo "       "${gray}"* "${lightpurple}"ARG1"${normal}" "${gray}"- Is bucket name."${normal}""
   echo "       "${gray}"* Ex. --remove-bucket "test-bucket-60994""${normal}""
   echo ""${aqua}""${bold}"----------------------------------------------------------------"${normal}""
   echo
   echo ""${aqua}""${bold}"----------------------------------------------------------------"${normal}""
   echo " "${lightyellow}""${bold}"--download-bucket"${normal}" - Choose Bucket too Download/Sync and Local Directory to Copy To "${lightpurple}"ARG1 ARG2"${normal}""
   echo "       "${gray}"* Enter your bucket to downlaod "${lightpurple}"ARG1"${normal}" "${gray}"and your local directory location to copy too"${normal}" "${lightpurple}"ARG2"${normal}""
   echo "       "${gray}"* "${lightpurple}"ARG1"${normal}" "${gray}"- Is the Bucket to copy."${normal}"" 
   echo "       "${gray}"* "${lightpurple}"ARG2"${normal}" "${gray}"- Is the the local directory to copy too."${lightpurple}""
   echo "       "${gray}"* Ex. --download-bucket "test-bucket-60994" "~/local-directory""${normal}""
   echo ""${aqua}""${bold}"----------------------------------------------------------------"${normal}""
}

aws_config()
{
sudo sed -i 's/#$nrconf{restart} = '"'"'i'"'"';/$nrconf{restart} = '"'"'a'"'"';/g' /etc/needrestart/needrestart.conf
sudo DEBIAN_FRONTEND=noninteractive apt-get dist-upgrade -y && sudo apt update -y && sudo apt upgrade -y && sudo apt -y install awscli
aws configure --profile devaccount
}

print_configs()
{
echo
cat ~/.aws/config
cat ~/.aws/credentials
}

list_buckets()
{
aws s3 ls --profile devaccount
}

create_bucket()
{
# If no arguments passed, creates a bucket un US-West-1

if [ "$1" ] && [ "$2"  ]; then
    bucket_name="$1"
    region="$2"
    aws s3api create-bucket --bucket "$bucket_name" --region "$region" --create-bucket-configuration LocationConstraint="$region" --profile devaccount
elif [ "$1" ]; then
    bucket_name="$1"
    region="us-west-1"
    aws s3api create-bucket --bucket "$bucket_name" --region "$region" --profile devaccount
fi
}

remove_bucket()
{
bucket_name=$1
aws s3 rb "s3://$bucket_name" --force --profile devaccount
}

download_bucket()
{
my_bucket="$1"
local_folder="$2"
aws s3 sync s3://"$my_bucket" "$local_folder" --profile devaccount
}

sync_files_to_bucket()
{
my_bucket="$1"
local_folder="$2"
aws s3 sync "$local_folder" s3://"$my_bucket"/ --profile devaccount
}

sync_bucket_to_folder()
{
my_bucket="$1"
local_folder="$2"
aws s3 sync s3://"$my_bucket"/ "$local_folder" --profile devaccount
}

list_bucket_web_configs()
{
bucket=$1
aws s3api get-bucket-website --bucket "$bucket" --profile devaccount
}

add_bucket_website()
{
# Add static website hosting configuration from an S3 bucket using the AWS CLI
bucket=$1
clear
echo "Adding Static Website Configuration for Bucket: $bucket"
aws s3api put-bucket-website --bucket "$bucket" --website-configuration file://./configs/static-website-config.json --profile devaccount
echo "Done"
echo "$bucket"
aws s3api get-bucket-website --bucket "$bucket" --profile devaccount
}


remove_bucket_website()
{
# Remove static website hosting configuration from an S3 bucket using the AWS CLI
bucket=$1
clear
echo "Removing Static Website Configuration for Bucket: $bucket"
aws s3api delete-bucket-website --bucket $bucket --profile devaccount
echo "Done"
echo "$bucket"
aws s3api get-bucket-website --bucket "$bucket" --profile devaccount
}

add_bucket_website_redirect()
{
bucket=$1
bucket_redirect=$2
clear
echo "Adding Static Website Redirect Configuration for Bucket: $bucket"
sed -i "s/\$DOMAIN/$bucket_redirect/g" ./configs/static-website-redirect-config.json
aws s3api put-bucket-website --profile devaccount --bucket "$bucket" --website-configuration file://./configs/static-website-redirect-config.json
cp -r ./configs/defaults/static-website-redirect-config.json.copy ./configs/static-website-redirect-config.json
echo "Done"
echo "$bucket"
aws s3api get-bucket-website --bucket "$bucket" --profile devaccount
}

add_bucket_static_policy()
{
bucket=$1
clear
echo "Adding Static Website Policy for Bucket: $bucket"
sed -i "s/\$DOMAIN/$bucket/g" ./configs/static-website-policy-config.json
aws s3api put-bucket-policy --bucket "$bucket" --policy file://./configs/static-website-policy-config.json --profile devaccount
cat ./configs/static-website-policy-config.json
cp -r ./configs/defaults/static-website-policy-config.json.copy ~/aws-server-hub/configs/static-website-policy-config.json
echo "Done"
echo "$bucket"
aws s3api get-bucket-policy --bucket "$bucket" --profile devaccount
}

remove_bucket_policy()
{
bucket=$1
clear
echo "Removing Bucket Policy for $bucket"
aws s3api delete-bucket-policy --bucket "$bucket" --profile devaccount
echo "Done"
aws s3api get-bucket-policy --bucket "$bucket" --profile devaccount
}

make_bucket_public()
{
bucket=$1
echo "Making bucket public"
aws s3api put-public-access-block --bucket "$bucket" --public-access-block-configuration "BlockPublicAcls=true,IgnorePublicAcls=true,BlockPublicPolicy=true,RestrictPublicBuckets=true" --profile devaccount
echo "Done"
echo "$bucket"
aws s3api get-public-access-block --bucket "$bucket" --profile devaccount
}

make_bucket_private()
{
bucket=$1
aws s3api put-public-access-block --bucket "$bucket" --public-access-block-configuration "BlockPublicAcls=false,IgnorePublicAcls=false,BlockPublicPolicy=false,RestrictPublicBuckets=false" --profile devaccount
echo "Done"
echo "$bucket"
aws s3api get-public-access-block --bucket "$bucket" --profile devaccount

}

while :; do
    case $1 in
        -h|-\?|--help)
            Help |& less -F -R    # Display a usage synopsis.
            exit
            ;;
	-i|-\?|--config)
            aws_config    # Display a usage synopsis.
            exit
            ;;
	-f|-\?|--print)
            print_configs    # Display a usage synopsis.
            exit
            ;;
	-l|-\?|--list-buckets)
            list_buckets    # Display a usage synopsis.
            exit
            ;;
#########################################################################################################################################################################################################

        -d|--download-bucket)       # Takes an option argument; ensure it has been specified.
	     if [ "$2" ] && [ "$3"  ]; then
             my_bucket=$2
	     local_folder=$3
             download_bucket "$my_bucket" "$local_folder"
                shift
            else
                echo 'ERROR: "--download-bucket" requires a non-empty option argument.'
            fi
            ;;
        -d|--sync-files-to-bucket)       # Takes an option argument; ensure it has been specified.
	     if [ "$2" ] && [ "$3"  ]; then
             my_bucket=$2
	     local_folder=$3
             sync_files_to_bucket "$my_bucket" "$local_folder"
                shift
            else
                echo 'ERROR: "--download-bucket" requires a non-empty option argument.'
            fi
            ;;
        -d|--sync-bucket-to-folder)       # Takes an option argument; ensure it has been specified.
	     if [ "$2" ] && [ "$3"  ]; then
             my_bucket=$2
	     local_folder=$3
             sync_bucket_to_folder "$my_bucket" "$local_folder"
                shift
            else
                echo 'ERROR: "--download-bucket" requires a non-empty option argument.'
            fi
            ;;
	-d|--add-bucket-website-redirect)       # Takes an option argument; ensure it has been specified.
	     if [ "$2" ] && [ "$3"  ]; then
             my_bucket=$2
	     my_redirect_bucket=$3
             add_bucket_website_redirect "$my_bucket" "$my_redirect_bucket"
                shift
            else
                echo 'ERROR: "--download-bucket" requires a non-empty option argument.'
            fi
            ;;
        -r|--remove-bucket)       # Takes an option argument; ensure it has been specified.
	     if [ "$2" ]; then
             bucket=$2
             remove_bucket "$bucket"
                shift
            else
                echo 'ERROR: "--remove-bucket" requires a non-empty option argument.'
            fi
            ;;
	-l|--list-bucket-web-configs)       # Takes an option argument; ensure it has been specified.
	     if [ "$2" ]; then
             bucket=$2
             list_bucket_web_configs "$bucket"
                shift
            else
                echo 'ERROR: "--remove-bucket" requires a non-empty option argument.'
            fi
            ;;
        -r|--remove-bucket-website)       # Takes an option argument; ensure it has been specified.
	     if [ "$2" ]; then
             bucket=$2
             remove_bucket_website "$bucket"
                shift
            else
                echo 'ERROR: "--remove-bucket-website" requires a non-empty option argument.'
            fi
            ;;
        -a|--add-bucket-website)       # Takes an option argument; ensure it has been specified.
	     if [ "$2" ]; then
             bucket=$2
             add_bucket_website "$bucket"
                shift
            else
                echo 'ERROR: "--add-bucket-website" requires a non-empty option argument.'
            fi
            ;;
        -a|--add-bucket-static-policy)       # Takes an option argument; ensure it has been specified.
	     if [ "$2" ]; then
             bucket=$2
             add_bucket_static_policy "$bucket"
                shift
            else
                echo 'ERROR: "--add-bucket-website" requires a non-empty option argument.'
            fi
            ;;
        -a|--remove-bucket-policy)       # Takes an option argument; ensure it has been specified.
	     if [ "$2" ]; then
             bucket=$2
             remove_bucket_policy "$bucket"
                shift
            else
                echo 'ERROR: "--add-bucket-website" requires a non-empty option argument.'
            fi
            ;;
	-b|--bucket-public)       # Takes an option argument; ensure it has been specified.
	     if [ "$2" ]; then
             bucket=$2
             make_bucket_public "$bucket"
                shift
            else
                echo 'ERROR: "--add-bucket-website" requires a non-empty option argument.'
            fi
            ;;
	-b|--bucket-private)       # Takes an option argument; ensure it has been specified.
	     if [ "$2" ]; then
             bucket=$2
             make_bucket_private "$bucket"
                shift
            else
                echo 'ERROR: "--add-bucket-website" requires a non-empty option argument.'
            fi
            ;;
        -c|--create-bucket)       # Takes an option argument; ensure it has been specified.
	     if [ "$2" ] && [ "$3" ]; then
		    bucket_name="$2"
		    region="$3"
		    create_bucket "$bucket_name" "$region"
		    shift 2
		elif [ "$2" ]; then
		    bucket_name="$2"
		    create_bucket "$bucket_name" "us-west-1"
		    shift
		else
		    echo 'ERROR: "--create-bucket" requires two non-empty option arguments.'
		    exit 1
		fi
            ;;
#########################################################################################################################################################################################################

        --)              # End of all options.
            shift
            break
            ;;
        -?*)
            printf 'WARN: Unknown option (ignored): %s\n' "$1" >&2
            ;;
        *)               # Default case: No more options, so break out of the loop.
            break
    esac

    shift
done
#########################################################################################################################################################################################################
# echo
# echo "Syntax: ~/nsa/bin/asn.sh [--help|installation|finish|delete|build ARG1|update|copy|backup|remove-backup]"
# echo "[autostart|remove-autostart|build-rcmd|remove-rcmd]"
# echo

echo
   echo ""${bold}"Syntax: ["${white}"~/nsa/bin/asn.sh options:"${normal}""
   echo
   echo "["${lightyellow}"--help"${normal}"|"${lightyellow}"installation"${normal}"|"${lightyellow}"finish"${normal}"|"${lightyellow}"build "${lightpurple}"ARG1"${normal}"|"${lightyellow}"update"${normal}" "${lightpurple}"ARG1"${normal}"]"
   echo
   echo "["${lightyellow}"delete"${normal}"|"${lightyellow}"copy "${lightpurple}"ARG1 ARG2"${normal}"|"${lightyellow}"backup"${normal}""${lightpurple}" ARG1"${normal}"|"${lightyellow}"restore-backup"${normal}"|"${lightyellow}"remove-backup"${normal}"]"
   echo
   echo "["${lightyellow}"configs"${lightpurple}" ARG1"${normal}"|"${lightyellow}"build-rcmd"${normal}"s"${lightpurple}" ARG1"${normal}"]"
