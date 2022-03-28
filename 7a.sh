

set -- `who`
u=`whoami`
for i in $*
do
if [ $u != $1 ]
then
 `shift 5`
else
t=$4
fi
done
set -- `echo $t | tr ":" " "`
h=$1
echo " user logged in terminal at: $h"
if [ $h -ge 4 ] && [ $h -lt 12 ]
then
echo "GOOD MORNING mr. $u"
elif [ $h -ge 12 ]  && [ $h -lt 16 ]
then
echo "GOOD afternoon mr.$u"
elif [ $h -ge 16  ] && [ $h -lt 19 ]
then
echo "GOOD evening mr. $u"
else
echo "GOOD night mr. $u"
fi
