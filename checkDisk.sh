#!/BIN/BASH

#make a script that will output if a disk is 80% or more full.

df -h |sed 1d | while read a b c d e f
do
        e=${e::-1}
        #echo $e
        if [ $e -gt 79 ]
        then
                echo $a "is over 80%, it is at :" $e
        fi
done
