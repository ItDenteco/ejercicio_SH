#!/bin/bash


find_sources() {
    local source=$1
    for types in d f;
    do
        cmd_find=$(find . -type $types -name $source)
	if [ -n "$cmd_find" ]; then
		echo "Recurso encontrado $source"
		return 0
	fi
    done
    echo "Recurso no encontrado"
    exit 1
}

echo  "Recursos a encontrar"
read SOURCE

find_sources "$SOURCE"
