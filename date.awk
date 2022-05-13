BEGIN{ 
OFS=" "
}
{
split($0,date,"-")
if(date[3]<=99){
date[3]=date[3]+2000
}
if(date[2]>=1 && date[2]<=12)
{
if(date[2]==1 && date[1]>=1 && date[1]<=31)
{
print "JAN",date[1],date[3]
exit
}
else if(date[2]==2)
{
if(date[1]>=1 && date[1]<=28 && (date[3]%4)!=0)
print "FEB",date[1],date[3]
else if(date[1]>=1 && date[1]<=29 && (date[3]%4)==0)
print "FEB",date[1],date[3]
else
print "invalid date"
exit
}
if(date[2]==3 && date[1]>=1 && date[1]<=31)
{
print "MAR",date[1],date[3]
exit
}
if(date[2]==4 && date[1]>=1 && date[1]<=30)
{
print "APR",date[1],date[3]
exit
}
if(date[2]==5 && date[1]>=1 && date[1]<=31)
{
print "MAY",date[1],date[3]
exit
}
if(date[2]==6 && date[1]>=1 && date[1]<=30)
{
print "JUN",date[1],date[3]
exit
}
if(date[2]==7 && date[1]>=1 && date[1]<=31)
{
print "JUL",date[1],date[3]
exit
}
if(date[2]==8 && date[1]>=1 && date[1]<=31)
{
print "AUG",date[1],date[3]
exit
}
if(date[2]==9 && date[1]>=1 && date[1]<=30)
{
print "SEP",date[1],date[3]
exit
}
if(date[2]==10 && date[1]>=1 && date[1]<=31)
{
print "OCT",date[1],date[3]
exit
}
if(date[2]==11 && date[1]>=1 && date[1]<=30)
{
print "NOV",date[1],date[3]
exit
}
if(date[2]==12 && date[1]>=1 && date[1]<=31)
{
print "DEC",date[1],date[3]
exit
}
else
print "invalid date"
exit
}
else
print "invalid month"
exit
}

