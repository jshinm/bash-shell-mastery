# In this challenge, we practice using the tr command because it is a useful translation tool in Linux.
# In a given fragment of text, replace all parentheses ()  with box brackets [].

# Input Format
# A block of ASCII text.

# Output Format
# Output the text with all parentheses () replaced with box brackets [].

# STDIN
# int i=(int)5.8
# (23 + 5)*2

# STDOUT
# int i=[int]5.8
# [23 + 5]*2
tr '()' '[]'