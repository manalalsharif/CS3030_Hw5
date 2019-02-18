


#awk 'BEGIN { FS="," }; { if($5 == "Female" && $6 == "Canada") if(!$4) {print "waldo@weber.edu" } {print $4 } }' MOCK_DATA1.csv
#awk 'BEGIN { FS="," }; { if(!$4) {print "waldo@weber.edu" } }' MOCK_DATA1.csv
awk 'BEGIN { FS="," }; { if($5 == "Female" && $6 == "Canada" && (!$4)) {print "waldo@weber.edu", $5, $6} }' $1
awk 'BEGIN { FS="," }; { if($5 == "Female" && $6 == "Canada" && ($4)) {print $4, $5, $6 } }' $1





