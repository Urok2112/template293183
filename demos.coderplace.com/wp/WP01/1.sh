find . -name "*\?*" |
    while IFS= read file_name; do
        cp "$file_name" "$(echo ${file_name} | sed s/?.*//)"
    done
#    -exec sh -c "echo {} $(echo "{}" | sed s/?ver.*/1232/) " \;