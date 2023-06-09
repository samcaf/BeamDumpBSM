#!/bin/bash

# A bash script, taken from https://github.com/ymzhong/mg5_aMC_tutorial/blob/main/, which converts an LHE file to a python file

if [ $# -ne 4 ]; then
         echo Usage: $0 \<Input\> \<initial?\> \<intermediate?\> \<final?\>
         exit 127
fi

cat $1 | awk -v initial=$2 -v inter=$3 -v final=$4 'BEGIN{x=0;first=1;firste=1;print "["}{
if (x != 0) x+=1;
if( $1 ~ /event/)
{
   if (x==0)
   {
     x=1;
     if (firste==0) print ",";
     print "["
   }
   else
   {
     x=0;
     print "]";
     firste=0;
     first=1;
   }
}
if ( x > 2)
{
   if ((($2==-1 && $1 != "<rscale>") && initial==1)||(($2==1 && $1 != "<rscale>") && final==1)||(($2==2 && $1 != "<rscale>") && inter==1))
   {
      if (first==0) print ",";
      first=0;
      print "[" $1 ", " $7 ", "$8 ", "$9 ", "$10 "]";
   }
}
}END{print "]"}'
