# Hello World Program in Bash Shell

cat words.txt | tr -s ' ' '\n'|sort |uniq -c|sort -nr|awk '{print $2 " " $1}'