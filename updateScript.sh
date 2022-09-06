#!/bin/bash

cd /chemotion/app && echo "User.find_by_email('$1').update((password:'${2:-chemotion}', first_name:'$3', last_name:'$4', type:'Person', name_abbreviation:'$5')" | rails c && cd ..
