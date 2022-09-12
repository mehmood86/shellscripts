#!/bin/bash

CMDStatement1=`cd /chemotion/app && echo "User.find_by(email:'$1')" | rails c | tail -2 | head -1 && cd ../..`
CMDStatement2=`cd /chemotion/app && echo "User.find_by(email:'$1').update(password:'$2', first_name:'$3', last_name:'$4', type:'Person', name_abbreviation:'$5')" | rails c ) && cd ../..`

if [ $(CMDStatement1) == 'nil' ] ; then echo "No record found"; elif [ $( CMDStatement2) | head -1 == 'true' ]; echo "Record has been successfuly updated" ; else echo "Something went wrong" ; fi
