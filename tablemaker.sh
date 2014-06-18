#!/bin/bash
# lab5 by Napoleon
# uses table.txt
# tablemaker.sh
#
#set -x


if [ -e tmpfile ];then 
	rm tmpfile
fi


if [ ! -e filetable.txt ]; then
	cp table.txt filetable.txt
fi

IFS_OLD=:$IFS
IFS=$'\n'
DEL='%%%'

file=$(cat table.txt)
tmpfile=$(grep -v %%% table.txt) 

echo $file > oldfile

#create for loop test to see if line has delimeter


# changes changed $file to tmpfile below
# changes made (for LINE in $newfile replaced for LINE in $tmpfile

newfile=$(cat filetable.txt)


for LINE in $newfile
	do
#This code needs improvement
#This section must display each line followed by "extension?"
#The extension is then copied to the end of the line  
		echo $LINE;
			
		if [ "$(echo $LINE | grep -v "$DEL")" ];then
			read -p "enter an extension: " extension 
			if [ -n "$extension" ];then
				echo $LINE$DEL$extension >> tmpfile
			else 
				echo $LINE >> tmpfile
			fi
		else
			echo $LINE >> tmpfile
		fi
	done
cat tmpfile  > filetable.txt
IFS=($IFS_OLD)

exit 0

