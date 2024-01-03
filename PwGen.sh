#!/bin/bash
# Define the script version
version="1.0.0"
# Define the script name
script_name="PwGen"
# Define the script description
script_description="PwGen is a password generator in bash that generates strong and complex passwords. It can be used to generate passwords for any type of account, including e-mail accounts, social media accounts and website access accounts."
# Define the script author
script_author="vidux.sh"
# Define the script website
script_website="https://viduxsh.github.io/website/"

################################################################################
# Version                                                                      #
################################################################################
if [[ $1 == "-v" ]]; then
    # Display Veriosion
   echo $script_name
   echo
   echo "Version: $version"
   echo
  exit 0
fi

################################################################################
# Info                                                                         #
################################################################################
if [[ $1 == "-i" ]]; then
    # Display Help
   echo $script_name
   echo
   echo "Version: $version"
   echo
   echo "Description: $script_description"
   echo
   echo "Author name: $script_author"
   echo
   echo "Author website: $script_website"
   echo
  exit 0
fi

################################################################################
# Help                                                                         #
################################################################################
if [[ $1 == "-h" || $1 == "--help" ]]; then
    # Display Help
   echo "Add description of the script functions here."
   echo
   echo "Syntax: scriptTemplate [-h|v|i|x|u|l|n|s|]"
   echo "options:"
   echo "h     Print this Help."
   echo "v     Print software version and exit."
   echo "i     Print software info and exit."
   echo "x     Insert length of the password, default is 16."
   echo "u     Insert uppercase list, default is [ABCDEFGHIJKLMNOPQRSTUVWXYZ]."
   echo "l     Insert lowercase list, default is [abcdefghijklmnopqrstuvwxyz]."
   echo "n     Insert numbers list, default is [0123456789]."
   echo "s     Insert special characters list, default is [~!@#$%^&*+-/.,\{}[]();:?<>\"'_]."
   echo
  exit 0
fi

################################################################################
# Password Generator                                                           #
################################################################################
password_generator() {
    password=$(cat /dev/urandom | tr -cd "\\${uppercase}${lowercase}${numbers}${specialcharacters}" | fold -w ${psw_length} | head -n 1)

    echo $password
}

################################################################################
################################################################################
# Main program                                                                 #
################################################################################
################################################################################

# Stock variable
psw_length=16
uppercase="ABCDEFGHIJKLMNOPQRSTUVWXYZ"
lowercase="abcdefghijklmnopqrstuvwxyz"
numbers="0123456789"
specialcharacters="~!@#$%^&*+-/.,\{}[]();:?<>\"'_"

# Get the options
while getopts ":x:u:l:n:s:" option; do
    case $option in
        x) psw_length="$OPTARG"
        ;;
        u) uppercase="$OPTARG"
        ;;
        l) lowercase="$OPTARG"
        ;;
        n) numbers="$OPTARG"
        ;;
        s) specialcharacters="$OPTARG"
        ;;
        \?) # incorrect option
            echo "Error: Invalid option"
        exit;;
    esac
done

# Generate password
password_generator psw_length uppercase lowercase numbers specialcharacters
