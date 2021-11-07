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

# In this challenge, we practice using the tr command because it is a useful translation tool in Linux.
# In a given fragment of text, delete all the lowercase characters a-z.

tr -d 'a-z'

# In a given fragment of text, replace all sequences of multiple spaces with just one space.

# Input Format
# A block of ASCII text.

# Output Format
# Replace all sequences of multiple spaces with just one space.

tr -s ' ' # replaces repeating character (in this case ' ') with a single occurrence of the character