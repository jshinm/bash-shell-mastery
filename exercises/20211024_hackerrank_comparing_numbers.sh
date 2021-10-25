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
fi #fi must be in a separate line

# Given three integers (x, y, and z) representing the three sides of a triangle, identify whether the triangle is scalene, isosceles, or equilateral.

# If all three sides are equal, output EQUILATERAL.
# Otherwise, if any two sides are equal, output ISOSCELES.
# Otherwise, output SCALENE.
# Input Format

# Three integers, each on a new line.

# Constraints
# 1 <= val <= 100

# The sum of any two sides will be greater than the third.

# Output Format
# One word: either "SCALENE" or "EQUILATERAL" or "ISOSCELES" (quotation marks excluded).

read x;
read y;
read z;

if [[ x -eq y && y -eq z ]]; then echo "EQUILATERAL"
elif [[ x -eq y || x -eq z || y -eq z ]]; then echo "ISOSCELES"
else echo "SCALENE"
fi