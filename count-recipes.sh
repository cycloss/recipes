#! /bin/bash
	
printf "%-25s %s\n" "File" "Recipe count"

for file in $(find . -name '*.md'); do 
	printf "%-20s" $file
	grep -E '^## ' $file | wc -l
done