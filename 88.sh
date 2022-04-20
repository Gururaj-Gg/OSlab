echo "Enter Login name of the user"
read name
userinfo=`who | grep -w "$name"` # |grep"pts"`
if [ $? -ne 0 ]
then
echo "$name is not Logged in"
 exit
fi
loginhours=`echo "$userinfo" | tr -s " " | cut -c 24-25`
loginminuts=`echo "$userinfo" | tr -s " " | cut -c 27-28`
minnow=`date +%M`
hournow=`date +%H`
th=`expr $hournow - $loginhours`
tm=`expr $minnow - $loginminuts`
echo "$name is working since $th Hrs -$tm Minutes"

