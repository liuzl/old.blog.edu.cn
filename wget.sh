#!/bin/bash
#for((i=24059;i<=40000;i++));
for((i=50000;i<=80000;i++));
do
    #echo $(expr $i \* 4);
    wget "http://old.blog.edu.cn/user2/$i/" -O data/user2/$i.html
    if [ $? -ne 0 ]
    then
        rm data/user2/$i.html
    fi
done
