# Given N lines of input, print the 3rd character from each line as a new line of output.

while read line
do
echo $line | cut -c 3
done

# Display the 2 and 7 character from each line of text.

while read line
do
echo "$line" | cut -b 2,7
done

# Display a range of characters starting at the 2 position of a string and ending at the 7 position (both positions included).

while read line
do
echo "$line" | cut -b 2-7
done

# Given a tab delimited file with several columns (tsv format) print the first three fields.
while read line
do
echo "$line" | cut -f1-3 -d$'\t'
done