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
```bash
#bash calculator: arithmetic operation from string
#[-l] tag outputs as decimal
#options: [scale = 3] cut to 3rd decimal point (doesn't round)
variable=`echo "options; expression" | bc`

echo "scale = 3; $input" | bc -l

#arithmetic within echo doesn't involve brackets
#if bracket used, the output is always integer not float
echo "scale=3; $tmp/$cnt" | bc -l
```

## Printf
```bash
#printf [-v var] format [arguments]
# The -v option tells printf not to print the output but to assign it to the variable.

printf %.3f $(echo "$input" | bc -l) #rounds up to 3rd decimal point

printf "Open issues: %s\nClosed issues: %s\n" "34" "65"
> Open issues: 34
> Closed issues: 65
```

## Type conversion specifier
```bash
%b - Print the argument while expanding backslash escape sequences.
%q - Print the argument shell-quoted, reusable as input.
%d, %i - Print the argument as a signed decimal integer.
%u - Print the argument as an unsigned decimal integer.
%o - Print the argument as an unsigned octal integer.
%x, %X - Print the argument as an unsigned hexadecimal integer. %x prints lower-case letters and %X prints upper-case.
%e, %E - Print the argument as a floating-point number in exponential notation. %e prints lower-case letters and %E prints upper-case.
%a, %A - Print the argument as a floating-point number in hexadecimal fractional notation. %a prints lower-case letters and %A prints upper-case.
%g, %G - Print the argument as a floating-point number in normal or exponential notation, whichever is more appropriate for the given value and precision. %g prints lower-case letters and %G prints upper-case.
%c - Print the argument as a single character.
%f - Print the argument as a floating-point number.
%s - Print the argument as a string.
%% - Print a literal % symbol.
```

## Backslash-escaped characters
```bash
\\ - Displays a backslash character.
\b - Displays a backspace character.
\n - Displays a new line.
\r - Displays a carriage return.
\t - Displays a horizontal tab.
\v - Displays a vertical tab
```

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

## Do-While loop
```bash
#!/bin/bash
X=0
while [ $X -le 20 ]
do
	echo $X
	X=$((X+1))
done
```

## Conditional Statements
```bash
if condition1
then
	statement1
	statement2
	..........
elif condition2
then
	statement3
	statement4
	........    
elif condition3
then
	statement5
	statement6
	........    
else condtion4 #else isn't followed by then
    statement7
fi
```

## Conditional using brackets
```bash
# if [ operand1 operator operand2 ] then statement fi
# the space between operands and operator is crucial

#!/bin/bash
X=3
Y=4
empty_string=""
if [ $X -lt $Y ]	# is $X less than $Y ? 
then
	echo "\$X=${X}, which is smaller than \$Y=${Y}"
fi

if [ -n "$empty_string" ]; then
	echo "empty string is non_empty"
fi

if [ -e "${HOME}/.fvwmrc" ]; then 			# test to see if ~/.fvwmrc exists
	echo "you have a .fvwmrc file"
	if [ -L "${HOME}/.fvwmrc" ]; then 		# is it a symlink ?
		echo "it's a symbolic link"
	elif [ -f "${HOME}/.fvwmrc" ]; then 	# is it a regular file ?
		echo "it's a regular file"
	fi
else
	echo "you have no .fvwmrc file"
fi
```

## Conditional syntax
```bash
# for numeric comparison single bracket used
if [ $val1 -eq $val2 ]; then echo "equal numbers" fi

# for string comparison double bracket used
if [[ $val == "val" ]]; then echo "equal char" fi
```

## List of test operators

| operator | produces true if...  | number of operands  |
| -------- | -------------------- | ------------------- |
| -n    | operand non zero length       | 1
| -z    |	operand has zero length     |	1
| -d    |	there exists a directory whose name is operand	| 1
| -f    |	there exists a file whose name is operand       |	1
| -eq   |	the operands are integers and they are equal |	2
| -neq  |	the opposite of -eq	|2
| =     |	the operands are equal (as strings)|	2
| !=    |	opposite of =|	2
| -lt   |	operand1 is strictly less than operand2 (both operands should be integers)|	2
| -gt   |	operand1 is strictly greater than operand2 (both operands should be integers)|	2
| -ge   |	operand1 is greater than or equal to operand2 (both operands should be integers)|	2
| -le   |	operand1 is less than or equal to operand2 (both operands should be integers)	|2


## READ
```bash
read input
echo "Welcome $input" #must use double quotes"
> Welcome input_name

echo "Greetings $USER, your current working directory is $PWD"
> Greetings prashantb1984, your current working directory is /home/prashantb1984

# read only one char
read -n1 input #if input is {abcd}
echo "$input" #the stdout is "a"
```

## Mathmatical operation
```bash
read a
read b

echo $[a+b] #$ sign comes before the whole bracket, not individually on variables
echo $[a-b]
echo $[a*b]
echo $[a/b]
```

## No space around assignment operator
- bash gets unhappy if you leave a space on either side of the = sign. For example, the following gives an error message:
```bash
X = hello
```

## Why doesn't bash allow the C like for loops
- As it happens, this is discouraged for a reason: bash is an interpreted language, and a rather slow one for that matter. For this reason, heavy iteration is discouraged.

## Variable expansion
```bash
#!/bin/bash
LS="ls"
LS_FLAGS="-al"

$LS $LS_FLAGS $HOME
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