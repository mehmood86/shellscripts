#!/bin/bash

cd /chemotion/app && echo "User.find_by_email('$1').update((password:'${1:-chemotion}', first_name:'$2', last_name:'$3', type:'Person', name_abbreviation:'$4')" | rails c && cd ..
