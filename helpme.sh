#!/bin/bash

#My help file.-V1.0
#Likui 2013 08 14

echo "welecome to help me file"
echo "usage: helpme.sh <git,makefile>"
echo "argc number: $#"

#current path
cur_path=`pwd`
#helpme.sh path
help_path=`dirname $0`

if [ "$1" == "git" ]; then
	cd $help_path
	echo "------start-------"
	cat git_help.txt
	echo "------ end -------"
	cp -f git_help.txt $cur_path
	cd -
elif [ "$1" == "makefile" ]; then
	cd $help_path
	cp -f makefile_templet  $cur_path/makefile
	cd -
	echo "makefile template is in your current path now."
else
	echo "your question: $1"
	echo "sorry,I can't help you about your question.."
fi
