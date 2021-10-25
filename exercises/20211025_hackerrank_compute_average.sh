# Given N integers, compute their average, rounded to three decimal places.

tmp=0;
cnt=0;

read total #skip first number (total number of input)
read num #first number

#while solution
# while [ -n "$num" ]
# do
# cnt=$[cnt+1]
# tmp=$[tmp+num]
# read num
# done

#for loop solution
#notice that there's no such thing as {1..$total}
for i in $(seq 1 1 $total)
do
cnt=$[cnt+1]
tmp=$[tmp+num]
read num
done

out=$(echo "$tmp/$cnt" | bc -l)

if [[ $out == "0" ]]; then echo 0.000
else printf %.3f $out
fi