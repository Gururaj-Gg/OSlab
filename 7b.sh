if [ $# -ge 2 ]
then
for fn in $*
do
if [ -e $fn ]
then
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
else
echo "$fn file not found"
fi
done
else
echo " enter proper parameter"
fi

