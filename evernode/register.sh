#!/bin/bash

echo -n "Please enter the account number: "
read account

echo -n "Please enter the secrect key: "
read secret_key



wget  https://raw.githubusercontent.com/EvernodeXRPL/evernode-resources/main/sashimono/installer/evernode.sh 

sudo apt install expect

chmod +x evernode.sh
chmod +x register.exp

expect ./register.exp $account $secret_key  


