echo "enter the password"
stty -echo
read p1
stty -echo
echo "confirm password"
stty -echo
read p2
stty -echo
while [ "$p1" != "$p2" ]
do
echo "re enter the correct password "
stty -echo
read p2
stty -echo
done
clear
echo "-------------------------Terminal Locked-----------------------------"
echo " Enter the password to unlock"
read p3
stty -echo
while [ "$p1" != "$p3" ]
do
clear
echo "--------------------------Terminal Locked-----------------------------"
echo "password does not match"
echo "enter the correct password"
read p3
stty echo
done
clear
echo "--------------------------Terminal Unlocked---------------------------"

