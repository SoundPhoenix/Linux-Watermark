#!/Bin/bash
set -e
echo -e "/e[32m
# # # # # # # # # # # # # # # # # # # # # # # # # # # # #
#           Tanner's Watermark Setup Script             #
#       This Script only works on Ubuntu & Debian       #
# # # # # # # # # # # # # # # # # # # # # # # # # # # # #e[0m"

#Make sure the user is sudo
if [ "$EUID" -ne 0 ]; then
    echo "This script must be run as a sudo user"
    exit 1
fi

#Check if user is sudo
if [ "$EUID" -ne 0 ]; then
    echo "This script must be run with sudo."
    exit 1
fi

# Check if the OS is Debian or Ubuntu
if [ -f /etc/os-release ]; then
    . /etc/os-release
    if [[ "$ID" != "debian" && "$ID" != "ubuntu" ]]; then
        echo "This script is intended for Debian or Ubuntu only."
        exit 1
    fi
else
    echo "Unable to determine the operating system."
    exit 1
fi

