#!/bin/bash

# Get the old IP address
old_ip=$(cat /home/adam/src/emailip/ipaddress.txt)

# Get public IP address
current_ip=$(curl -s api.ipify.org)

# If the addresses are not the same
if [[ "$current_ip" != "" && "$old_ip" != "$current_ip" ]]; then
# Send the IP address by E-mail
echo "IP-adress: $current_ip" | mail -s "Nodhuset har ny IP-adress" adamjlkowalski@gmail.com
echo "IP-adress: $new_ip" | mail -s "Nodhuset har ny IP-adress" aplotzki@telia.com

# Overwrite the old IP address
echo $current_ip > /home/adam/src/emailip/ipaddress.txt
fi
