#!/bin/bash
users=`awk -F':' '/^sudo/{print $4}' /etc/group`
IFS=',' read -a array <<< "$users"
for u in "${array[@]}"
do
    usermod -a -G rvm $u
    su - $u -c 'rvm user gemsets'
done
