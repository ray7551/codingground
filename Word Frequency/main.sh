# Hello World Program in Bash Shell

cat words.txt \
    | tr '[:punct:]' ' ' \
    | tr '[:upper:]' '[:lower:]' \
    | tr -s '[:space:]' '\n' \
    | sort | uniq -c\
    | sort -nr\
    | awk '{print $2 " " $1}'
    
# tr -s '[:space:]' '\n' replace one or more space like char to \n
# sort |uniq -c # uniq count only work on neighbouring repeated lines