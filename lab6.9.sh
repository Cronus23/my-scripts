#!/bin/bash
#This is lab6 by Napoleon M
# calls tablemaker.sh
#

#test extension
testX(){
	if [ ! $( grep $1 filetable.txt) ]
	then
		echo $1 >> filetable.txt
		lab5=$(which tablemaker.sh)
		lab5
	fi
}

addext(){
	ntype=$(grep $1 filetable.txt)
	ext=${ntype##*%}
	if [ "$ext" ] && [ ! "${i#*.}" = $ext ]; then
	
	echo mv "$i" "$i.$ext"
	fi
}

isDir(){

	if [ -d $1 ]
	then
		echo "directory"
	fi










Arg1=$1
for i in $(ls $Arg1)
do
	Type=$(file --mime-type -b $i)
testX $Type
addext $Type
done

