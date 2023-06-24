#!/bin/bash
# post.sh; generating new markdown posts with metadata
# Baoyi Chen 2017
                       
           
TARGET_FOLDER=~/Github/blog/_posts                          # specify the target folder
#TARGET_FOLDER=.                                            # or you can choose current folder

# 
# generate a new post
#
post() {

   NOW=$(date "+%Y-%m-%d %H:%M")             # get the date info
   DAY=$(date "+%Y-%m-%d")

   DASHEDTITLE="$1"                          # get date connected with dashes
      
   if [[ "$@" != "$1" ]]
   then 
        for WORD in ${@:2}
        do DASHEDTITLE+="-$WORD"
        done
   fi
               
   echo "---
title: $@
author: Baoyi Chen
updated: $NOW
---" > $TARGET_FOLDER/$DAY-$DASHEDTITLE.md   # add metadata

OPENORNOT=true                              # Set the value to false if automatically openning is not desired

if [ "$OPENORNOT" = true ]
then 
       open $TARGET_FOLDER/$DAY-$DASHEDTITLE.md
fi
}







