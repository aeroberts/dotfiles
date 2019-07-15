#!/bin/bash

h=`date +%H`

TOTAL_SPACES=44
echo //--------------------------------------------//
echo '//                                            //'

if [ $h -lt 12 ]; then
  echo '//             ☕️ Good morning ☕️             //'
elif [ $h -lt 18 ]; then
  echo '//               Good afternoon               //'
else
  echo '//             🌙 Good evening 🌙             //'
fi

# Node Version Block
NODE_VERSION=$(node -v)
NODE_VERSION_LENGTH=${#NODE_VERSION}
NODE_OUTPUT_LENGTH=`expr 31 + $NODE_VERSION_LENGTH`
NODE_OUTPUT_SPACES=`expr $TOTAL_SPACES - $NODE_OUTPUT_LENGTH`
NODE_OUTPUT_FIRST_HALF_SPACES=`expr $NODE_OUTPUT_SPACES / 2`
NODE_OUTPUT_SECOND_HALF_SPACES=`expr $NODE_OUTPUT_SPACES - $NODE_OUTPUT_FIRST_HALF_SPACES`
NODE_OUTPUT_STRING="//"

for i in $(seq 1 $NODE_OUTPUT_FIRST_HALF_SPACES); do 
    NODE_OUTPUT_STRING+=' '
done

NODE_OUTPUT_STRING+="Currently running node version $NODE_VERSION"

for i in $(seq 1 $NODE_OUTPUT_SECOND_HALF_SPACES); do 
    NODE_OUTPUT_STRING+=' '
done

NODE_OUTPUT_STRING+="//"
echo "${NODE_OUTPUT_STRING}"

echo '//                                            //'
echo //--------------------------------------------//
