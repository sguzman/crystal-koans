#!/bin/bash
#uncomment for debugging
#set -x
#define the test order
tests=(booleans numbers strings symbols enums arrays tuples \
       hashes ranges loops blocks functions structs classes \
       chaining_methods exceptions macros)
#
for t in "${tests[@]}" 
do
  echo "Testing your strength on $t ..."
  crystal spec spec/${t}_spec.cr
  if [ $? -ne 0 ]; then
    echo "The Master says: "
    echo "Something is wrong. Please meditate on $t topic "
    echo "and try to follow the path to Enlightenment"
    exit 1
  fi
done
