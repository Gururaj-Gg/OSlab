echo "this is your first shell script\n"
echo -n enter the first number:
read a
echo -n enter the second number:
read b
c=`expr $a + $b`
echo " sum of $a and $b is $c\n"
c=`expr $a \* $b`
echo " multiplication of $a and $b is $c\n"
c=`expr $a / $b`
echo " division of $a and $b is $c\n"
c=`expr $a - $b`
echo " substraction of $a and $b is $c\n"
c=`expr $a % $b`
echo " remainder of $a and $b is $c\n"
echo this is the number of files 
ls  | wc -l
