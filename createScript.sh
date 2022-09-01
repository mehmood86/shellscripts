#!/bin/bash

cd /chemotion/app && echo "User.create(email:'$email', password:'${2:-chemotion}', first_name:'$3', last_name:'$4', type:'Person', name_abbreviation:'$5').save" | rails c && cd 
