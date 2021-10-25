# A mathematical expression containing +,-,*,^, / and parenthesis will be provided. 
# Read in the expression, then evaluate it. Display the result rounded to 3 decimal places.

# All numeric values are <= 999.
read input;

#scale indicates rounding at decimal points including semicolon
# | bc carries out arithmetic operation from string input
echo "scale = 3; $input" | bc -l