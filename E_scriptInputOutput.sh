# $1 $2 $3 ... are used to store user inputs
# type command E_scriptInputOutput 10 20 manan and it will store them in $1, $2 and $3 respectively

echo $1 $2 $3

# to use array inputs create array $@ represents infinite elements
# remember both take input from first value i.e. $1 will store same value as args[1]

args=("$@")

echo ${args[3]} ${args[4]} ${args[2]}

# to print all element use ->

echo $@

# and $# for length of array.

echo $#

# to read a file from input we can do.

while read line
do
    echo "$line"
done < "${1}"

# this will read the first argument and use that as a file name.

# standard output and standard error
: ' if we want to store output of a command in a file and if it throws error that store them in another file we can do this
    if output is not an error it stores output in file mentioned in 1> and otherwise in 2>.
'
 
ls -al 1>file1.txt 2>file2.txt

# to use same file for both just mention 2>&1

ls -al 1>file1.txt 2>&1

