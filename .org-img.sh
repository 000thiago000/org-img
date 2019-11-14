#!/bin/sh

#Organiza imagens em pastas separadas por dias.
org-img-dia () {
    
    if [[ -n $(find ~/Imagens -maxdepth 1 -type f \( -name \*.jpeg -o -name \*.png \)) ]];then
        data=$(date +%d-%m-%y)
        if [[ -n $(find ~/Imagens -maxdepth 1 -name IMG-$data) ]];then
            echo "diretório já existe!"
        else
            mkdir ~/Imagens/IMG-$data
        fi
        find ~/Imagens -maxdepth 1 -type f \( -name \*.jpeg -o -name \*.png \) -exec mv {} ~/Imagens/IMG-$data/ \;
    fi
}

#Organiza imagens em pastas separadas por meses.
org-img-mes () {
    if [[ -n $(find ~/Imagens -maxdepth 1 -name IMG-*) ]];then
        data=$(date +%B -d "-1 day")
        if [[ -n $(find ~/Imagens -maxdepth 1 -name IMG-$data) ]];then
            echo "diretório já existe!"
        else
            mkdir ~/Imagens/IMG-$data
        fi
        find ~/Imagens -maxdepth 1 -name IMG-* -type d \( ! -name IMG-$data \) -exec mv {} ~/Imagens/IMG-$data/ \;
    fi
}

#Organiza imagens em pastas separadas por ano.
org-img-ano () {
    if [[ -n $(find ~/Imagens -maxdepth 1 -name IMG-*) ]];then
        data=$(date +%Y -d "-1 day")
        if [[ -n $(find ~/Imagens -maxdepth 1 -name $data) ]];then
            echo "diretório já existe!"
        else
            mkdir ~/Imagens/$data
        fi
        find ~/Imagens -maxdepth 1 -name IMG-* -type d \( ! -name $data \) -exec mv {} ~/Imagens/$data/ \;
    fi
}