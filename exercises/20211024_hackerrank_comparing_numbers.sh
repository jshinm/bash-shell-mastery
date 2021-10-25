# Given two integers, x and y

# Exactly one of the following lines:
# - X is less than Y
# - X is greater than Y
# - X is equal to Y

read x;
read y;

#conditionals are sensitive to whitespace
#the following form must be followed: [ operand1 operator operand2 ] 
if [ $x -lt $y ]; then echo "X is less than Y" #there must be semicolons always
elif [ $x -gt $y ]; then echo "X is greater than Y"
elif [ $x -eq $y ]; then echo "X is equal to Y"
fi