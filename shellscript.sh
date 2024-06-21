#!/bin/bash

DIR="/home/usuario/downloads"

if [ ! -d "$DIR" ]; then
    echo "O diretório $DIR não existe."
    exit 1
fi

cd "$DIR" || exit

organizar_por_extensao() {
    for FILE in *; do
        if [ -f "$FILE" ]; then
            EXTENSION="${FILE##*.}"
            DEST_DIR="$DIR/$EXTENSION"

            if [ ! -d "$DEST_DIR" ]; then
                mkdir "$DEST_DIR"
            fi

            mv "$FILE" "$DEST_DIR"/
        fi
    done
    echo "Arquivos organizados por extensão."
}
