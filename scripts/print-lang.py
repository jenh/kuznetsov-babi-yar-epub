# Takes an input and prints only the language specified
# Usage: python print-lang.py [filename] [lang-code]
# i.e., python print-lang.py 04.md ru or python print-lang.py 04.md en

import sys
import guess_language
from guess_language import guessLanguage

input_file = sys.argv[1]
lang = sys.argv[2]

myfile = open(input_file,'r')
for line in myfile:
  if guessLanguage(line) == lang:
    print line
  else:
    pass
