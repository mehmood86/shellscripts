#!/bin/bash

if [[ $(cd /chemotion/app && echo "User.find_by(email:'$1')" | rails c | tail -2 | head -1) == 'nil' ]] ; then echo "No record found"; else $(cd /chemotion/app && echo "User.find_by(email:'test1@email.com').update(password:'$2', first_name:'$3', last_name:'$4', type:'Person', name_abbreviation:'$5')" | rails c ); fi
