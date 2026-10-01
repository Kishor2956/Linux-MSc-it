
#!/bin/bash

date

	echo "Date is........... : $(date '+%d-%m-%y')"
	echo "Date is........... : $(date '+%m/%d/%y')"
	echo "Time is........... : $(date '+%H-%M-%S')"
	echo "Time is........... : $(date '+%H:%M:%S')"
	echo "Number of Days Elapsed in this Year is : $(date '+%j')"
	echo "Serial Number of Days (of Week) is ... : $(date '+%u')"
	echo "Day and Date is...... : $(date '+%A %b %d, %Y')"
	echo "Time in the Form AM/PM............ : $(date '+%H:%M:%S %p')"

hour="$(date '+%H')"

if [ $hour -lt 7 ] && [ $hour -gt 12 ];then
echo "Good Morning"
elif [ $hour -lt 13 ] && [ $hour -gt 19 ];then
echo "Good Afternoon"
else
echo "Good Night"
fi
