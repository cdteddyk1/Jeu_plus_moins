#!/bin/bash

#Création de mon Jeu
echo "rentrez votre nom de joueur"
read prenom_user
echo "Choisissez votre nombre de joueur"
read nombre_joueur

jeu=${RANDOM:0:2}
nombre_essaie=0
echo "${jeu}"

while [ $jeu != $nombre_joueur ]

do

    if [ ${jeu} -lt ${nombre_joueur} ]
    then
        echo " Votre nombre est plus petit que le nombre à trouver";
    elif [ ${jeu} -gt ${nombre_joueur} ];
    then
        echo " Votre nombre est plus grand que le nombre à trouver";
    fi
    read nombre_joueur
     nombre_essaie=`expr $nombre_essaie + 1`
done

if [ $jeu == $nombre_joueur ] 
then
    echo "BRAVO VOUS AVEZ TROUVE LE NOME"
    echo " $prenom_user avez fait $nombre_essaie erreur"
fi

echo $prenom_user a fait un nombre d erreur de $nombre_essaie >> score_board.txt

while read line  
do   
    echo -e "$line"
done < score_board.txt
echo "au autre test";
