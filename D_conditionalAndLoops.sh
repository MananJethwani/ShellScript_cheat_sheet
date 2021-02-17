#! /bin/bash
: ' line written above is known as shellbang and it tells the interpreter that the following lines are written for bash,
    so execute this file as bash script.'

# to declare a variable just write it's name and give it a value(= should not have space) and to access it use a $ before it's name
count=10
# this is a conditional statement where eq stands for ==
# don't forget to put spaces between [ ] while writting conditions
if [ $count -eq 10 ]
then 
    echo "condition is true"
else 
    echo "conditionn is false"
fi

: ' ne for not equal
    gt for greater than or use angle bracket
    we can also use elif then for multiple if else statement
'
# multiple condition using && or || operaotr
age=20

if [ $age -gt 10 ] && [ $age -lt 40 ]
then
    echo "age is correct"
else
    echo "age is wrong"
fi

# other ways for multiple condition are -> 

if [[ $age -gt 10  &&  $age -lt 40 ]]
then
    echo "age is correct"
else
    echo "age is wrong"
fi

# OR

if [ $age -gt 10 -a $age -lt 40 ]
then
    echo "age is correct"
else
    echo "age is wrong"
fi

# similarly -o for or can be used

# LOOPS

# while loop -> 

i=1

while [ $i -lt 10 ]
do 
    echo "$i"
    i=$(( i+1 ))
done

# until loop (it runs until the condition becomes true)
i=1
until [ $i -ge 10 ]
do
    echo $i
    i=$(( i+1 ))
done

#For loop

for i in 1 2 3 4 5
do
    echo $i
done

#OR

for i in {0..20..2} # {starting..ending..increment}
do
    echo $i
done

#OR

for (( i=0; i<5; i++ ))
do
    echo $i
done

# we have brake or continue as well

for (( i=0; i<5; i++ ))
do
    if [ $i -eq 2 ]
    then
        break
    fi
    echo $i
done