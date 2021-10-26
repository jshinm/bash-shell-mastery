# Given N lines of input, print the 3rd character from each line as a new line of output.

while read line
do
echo $line | cut -c 3
done