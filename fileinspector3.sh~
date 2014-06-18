# Author: Napoleon
# Lab 6
# WITH assistance by Wendy and Eric
#
#
#
#
#set -x
addext(){
mv "$1" "$1.$ext"

}






a1=$1

for x in $(ls $a1)
do 
echo $a1 

	type1=$(file --mime-type -b $x)
	typeline=$(grep $type1 filetable.txt)
	ext=${typeline##*%}
	echo $type1

#this line is not working grabs the whole line

#ext=$(cat filetable.txt | grep $type1)
	echo $ext
	if [[ $x != ${x%.*}.{$ext} ]]
	then
		addext $x
	echo
else
		continue
	fi	

done

