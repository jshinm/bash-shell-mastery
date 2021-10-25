# Given N integers, compute their average, rounded to three decimal places.

tmp=0;
cnt=0;

read num #skip first number (total number of input)
read num #first number

while [ -n "$num" ]
do
cnt=$[cnt+1]
tmp=$[tmp+num]
read num
done

echo "scale=3; $tmp/$cnt" | bc -l