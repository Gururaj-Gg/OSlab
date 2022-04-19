
if [ $# -lt 1 ]
then
echo improper usage
echo correct usage is: $0 username
exit
fi
logname=$1
while true
do
who | grep "$logname" > /dev/null
if [ $? = 0 ]
then
echo $logname has logged in
echo "$logname" >> sh01log.txt
date >> sh01log.txt
echo "Hi" > mesg.txt
echo "$logname" >> mesg.txt
echo "Have a Good Day" >> mesg.txtmail "$logname" < mesg.txt
exit
else
sleep 60
fi
done
