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
    echo "[[PDF] $(basename $FILE)]($URL/$FILE)"
    echo ""
    NAME=$(basename $FILE .pdf)
    if [ -f arquivos/$NAME.txt ]
    then
        echo "[[Online no Google Drive] $NAME]($(cat arquivos/$NAME.txt))<br>"
        echo " => faça uma cópia e edite no seu Google Drive! ;-)"
    elif [ -f arquivos/$NAME.pptx ]
    then
        echo "[[PPTX] $NAME.pptx]($URL/arquivos/$NAME.pptx)"
    fi 
    echo ""
    printsep
done
