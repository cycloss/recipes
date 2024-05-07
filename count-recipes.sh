#! /bin/bash
	
printf "%-25s %s\n" "File" "Recipe count"

total_count=0

for file in $(find . -name '*.md'); do 
  count=$(grep -E '^## ' $file | wc -l)
  total_count=$((total_count + count))
	printf "%-25s %d\n" "$file" "$count"
done

printf "%-25s %d\n" "Total:" "$total_count"
