#!/bin/bash
for i in www.google.com www.facebook.com www.myntra.com www.flipkart.com www.sensex.com www.mhvfvbbvfb.com
do	
	ping -c2 $i
if [ $? -eq 0 ]
then
	echo "remote servers $i up and running" | mail -s "remote server monitoring" asmrv1991@gmail.com
else
 echo "remote servers $i is not in operation" | mail -s "remote server monitoring" asmrv1991@gmail.com
fi 
done
