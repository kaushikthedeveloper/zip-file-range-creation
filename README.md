# zip-file-range-creation
Create zip files for a range of sizes and number

# EXAMPLE : Running the script

    ./run_create_zip_file.sh 1 20 4 1 M

Creates:
- 5 zip files (in folder 1M_4)
- each having name signifying the range and the creation timestamp
- each zip file having :
    - 4 text files
    - each having random data
    - each of 1 Mb size
    - each with names as per range and with timestamp

#### File Structure

    $ tree 1M_4 --du -h

```
1M_4
├── [4.7K]  1_4-1543312228.zip
├── [4.7K]  5_8-1543312228.zip
├── [4.7K]  9_12-1543312228.zip
├── [4.7K]  13_16-1543312228.zip
└── [4.7K]  17_20-1543312228.zip
```


    $ unzip -l 1_4-1543312228.zip 

```
Archive:  1_4-1543312228.zip
  Length      Date    Time    Name
---------  ---------- -----   ----
  1048576  2018-11-27 15:20   1-1543312228.txt
  1048576  2018-11-27 15:20   2-1543312228.txt
  1048576  2018-11-27 15:20   3-1543312228.txt
  1048576  2018-11-27 15:20   4-1543312228.txt
---------                     -------
  4194304                     4 files
```    
  

ie, 

    $ unzip 1_4-1543312228.zip -d 1_4-1543312228

```
Archive:  1_4-1543312228.zip
    inflating: 1_4-1543312228/1-1543312228.txt  
    inflating: 1_4-1543312228/2-1543312228.txt  
    inflating: 1_4-1543312228/3-1543312228.txt  
    inflating: 1_4-1543312228/4-1543312228.txt
```
  
  
    $ tree 1_4-1543312228 --du -h

```
1_4-1543312228
├── [1.0M]  1-1543312228.txt
├── [1.0M]  2-1543312228.txt
├── [1.0M]  3-1543312228.txt
└── [1.0M]  4-1543312228.txt
```
