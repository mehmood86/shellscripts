#!/bin/bash

cd /chemotion/app
ifExists=`echo "User.find_by(email:'$1')" | rails c | tail -2 | head -1`
if [ $ifExists=='nil' ]; then echo "No record found"; else \
echo "User.find_by(email:'$1').update(password:'$2', first_name:'$3', last_name:'$4', type:'Person', name_abbreviation:'$5')" | rails c | tail -1;
echo "User updated"; fi
