#!/bin/bash

URL="https://github.com/WTICG23/slides/blob/main"

printsep() {
    echo "-----------------------------------------------------------------------"
    echo ""
}

echo ""
printsep
for FILE in arquivos/*.pdf
do 
    echo "[$(basename $FILE)]($URL/$FILE)"
    NAME=$(basename $FILE .pdf)
    if [ -f arquivos/$NAME.txt ]
    then
        echo "($NAME Online no Google Drive)]($(cat arquivos/$NAME.txt))"
    elif [ -f arquivos/$NAME.pptx ]
    then
        echo "[$NAME.pptx]($URL/arquivos/$NAME.pptx)"
    fi 
    echo ""
    printsep
done
