# Usage is process.sh [engine] [infile] [outfile]

ENGINE=$1
SOURCE=$2
OUTPUT=$3

while read -r line; do
	echo "$line\n" >> $OUTPUT
	trans -e $ENGINE -b "$line" >> $OUTPUT
	echo "\n" >> $OUTPUT
done < $SOURCE 
