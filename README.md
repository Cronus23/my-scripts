my-scripts
==========

Scripts I am working on for class.
So these scripts are a work in progress, most if not all of them have been replaced by a few files that are now considered 
mostly functional. The files of concern are tablemaker.sh, lab6.9.sh, filetable.txt, and table.txt. These files interact 
with each other and need to be in the same directory without modification. I ended up pushing all my files to show my thought
process and develope possible branches. Since I am new to git, I am not proficient, and not sure what I am doing. This is my
first experience with the philosophy of distributed developement ei "open source" or "free software".

The files interact like so:

1. table.txt: is a simple data file that is read into tablemaker.sh, tablemaker uses it to initialize its own table if one
does not yet exist. 

2. tablemaker.sh: tablemaker.sh peeks into the filetable.txt and prompts for a file extension if the table claims an 
extension is missing.

It then updates the filetable.txt

3. lab6.9: this file is lab6 and 7 actually. This file I tested intensly but could be flawed. To my understanding it works
in its current scope but has problems when "addext" function working into a directory. It supposed to call tablemaker.sh
and automate the file rename process based on tablemaker.sh and filetable.txt

Currently: I am a student in computer science and mathematics. I am learning bash scripting and stats and calculus.
More updates to follow as soon as I figure out git and github.
