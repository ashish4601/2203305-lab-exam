 #!bin/bash
 a=$1
 b=${a:0:2}_$2_$3.csv
 echo $1,$2,$3,$(wc -l $1)>>$b   #first line containing filename,fieldname,fieldvalue,no of lines
 less $1| head -1>>$b            #second line containg headers
 grep -iw $3 $1>>$b              #employee details who fit given criteria


 
 

