#!/bin/bash

cd /chemotion/app
ifExists=`echo "User.find_by(email:'$1')" | rails c | tail -2 | head -1`
if [ $ifExists=='nil' ]; then echo "No record found"; else \
echo "User.find_by(email:'$1').destroy" | rails c;
echo "User deleted"; fi
