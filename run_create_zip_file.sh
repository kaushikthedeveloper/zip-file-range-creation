#!/usr/bin/env bash
if (($#!=5))
then
	echo "Error : provide the file start - end range and the size count (count x size)"
	echo "Ex : ./run_create_zip_file.sh 1 2500 100 10 M"
	echo "\$1-\$2 & \$3. create files from range 1 to 2500 & with ranges of 100"
	echo "ie, create files 1-100, 101-200, 201-300 ... 2401-2500"
	echo "\$4. count (multiplied with size of file to get total size)"
	echo "\$5. Size of file -> multiplicative suffixes"
	echo "c =1, w =2, b =512, kB =1000, K =1024, MB =1000*1000, M =1024*1024, GB =1000*1000*1000, G =1024*1024*1024)"
	echo "- creates zip files of the given size for the given number of ranges"
	echo "- puts the zip files in a folder (here 10M_100)"
	exit 1
fi

mkdir $4$5_$3
rm $4$5_$3/*
for ((i=$1;i<$2;i+=$3))
do
	./create_zip_file.sh $i $(($i+$3-1)) $4 $5
done
