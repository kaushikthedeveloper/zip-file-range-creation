#!/usr/bin/env bash
if (($#!=4))
then
	echo "Error : provide the file start - end range and the size count (count x size)"
	echo "Ex : ./create_zip_file.sh 1 100 10 M"
	echo "\$1-\$2. create files from range 1 to 100"
	echo "\$3. count (multiplied with size of file to get total size)"
	echo "\$4. Size of file -> multiplicative suffixes"
	echo "c =1, w =2, b =512, kB =1000, K =1024, MB =1000*1000, M =1024*1024, GB =1000*1000*1000, G =1024*1024*1024)"
	echo "- creates zip files of the given size for the given number of ranges"
	exit 1
fi

timestamp=$(date +%s)
for ((i=$1;i<=$2;i++))
do
	dd if=/dev/zero of=$i-$timestamp.txt count=$3 bs=1$4
done

zip $3$4_$(($2-$1+1))/$1_$2-$timestamp.zip *.txt
rm *.txt
