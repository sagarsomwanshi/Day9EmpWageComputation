#!/bin/bash -x

rancheck=$((RANDOM%2))

if(($rancheck==1))
then
	echo "Present"
else
	echo "Absent"
fi
