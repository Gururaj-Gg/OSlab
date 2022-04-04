if [ $# -ge 2 ]
then
if [ -e $1 ]
then
if [ -e $2 ]
then
for fn in $*
do
if [ "$fn" = "$1" ]
then
continue
fi
for w in `cat $1`
do
p=$w
f="$fn"
l=`grep -owi "$p" $f | wc -l`
echo "$p is $l times in $f"
done
done
else
echo "$2 not valid "
fi
else
echo "$1 not valid"
fi
else
echo " enter proper parameter"
fi

