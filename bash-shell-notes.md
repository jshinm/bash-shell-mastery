# Bash/Shell Scripting Commands

## PWD
- print the current working directory

## CD
- navigate between directories on your computer

## MKDIR
- create new directories

## LS
- print a list of files and subdirectories within directories

## RM
- delete files (rm) and directories (rm -r)

## CP
- copy files (cp) and directories (cp -r) to another directory

## TOUCH
- easily create new files using a single command

## GREP
- filters based on regex pattern matching
```bash
grep 'a' fruits.txt
>  banana, apple, carrot

grep '[pc]' fruits.txt
> apple, carrot

grep '^[pc]' fruits.txt
> banana

grep 'Sydney Carton \| Charles Darnay' two_cities.txt | wc -l
#\| means OR

#egrep is the same thing as grep -e
```

## CAT	
- concat files line-by-line
```bash
cat new_fruits.txt | sort | uniq -c | head -n 3
> 14 apple, 13 banana, 12 carrot

cat two_cities.txt | egrep 'Sydney Carton|Charles Darnay' | wc -l

#saves the returned output as list.txt
cat state.txt | head -n 3 | cut -d ' ' -f 1 > list.txt
```
## TAIL/HEAD
- tail / head - n: see 'n' items from tail or head

## WC
- word count (-w for words, -l for lines)

## SED
- regex pattern matching, replace char
```bash
# The below simple sed command replaces the word “unix” with “linux” in the file.
sed 's/unix/linux/' geekfile.txt

# The below command replaces the second occurrence of the word “unix” with “linux” in a line.
sed 's/unix/linux/2' geekfile.txt

# The substitute flag /g (global replacement) specifies the sed command to replace all 
# the occurrences of the string in the line.
sed 's/unix/linux/g' geekfile.txt

# Use -n to suppress output, and the p command to print specific lines. 
# Below prints out every 10th line
sed -n 10p text.txt
```

## ECHO
- bash version of print

## SORT
- sorts 
    * -r: reverse

## UNIQ
- get only the unique items
	* -c: counts

## ARGV
- argument format
```bash
#!/usr/bash
echo $1
echo $2
echo $@ or $*
echo "there are " $# 'arguments"
> bash args.sh one two three four five
> one, two, one, two three four five, there are 5 arguments
```

## CUT
- cut contents into (based on flag used)
    * -b: byte
    * -f (field): -c option is useful for fixed-length lines. Most unix files doesn’t have 
fixed-length lines. To extract the useful information you need to cut by fields rather
    than columns. List of the fields number specified must be separated by comma. Ranges 
are not described with -f option. cut uses tab as a default field delimiter but can also 
work with other delimiter by using -d option.	
```bash	
cut -b 1,2,3 state.txt
> And 
> Aru
> Ass
> Bih

cut -b 1-3,5-7 state.txt
> Andra
> Aruach

# In this, 1- indicate from 1st byte to end byte of a line
cut -b 1- state.txt	

# In this, -3 indicate from 1st byte to 3rd byte of a line
cut -b -3 state.txt

# If -d option is used then it considered space as a field separator or delimiter:
cut -d " " -f 1 state.txt

cat soccer_scores.csv
> 1997,Levski,1
> 1998,Dunav,5
> 1999,Levski,1

cat soccer_scores.csv | cut -d "," -f 2 | tail -n +2 | sort | uniq -c
> 13 Arda
> 8 Beroe
> 9 Botev
```

## AWK
- format the output
```bash
awk '{ print $2, $1 }'
```

## TR
- -s: truncate the string with target string, but only remaining one instance (e.g. multiple whitespaces)

## For loop
```bash
for variable in {start..end..increments}
do
   command 1
   command 2
   echo "$variable"
done
```

## TODOS
```
uname
uptime
top
man
apt/yum
lsof
ss
netstat
mount
top
```