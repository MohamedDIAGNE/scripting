#!/bin/bash

#sed '1p' /etc/passwd > text.txt

echo "l'utilisateur en cours est" $USER

#nombre=$RANDOM

file=$USER$RANDOM.txt

users_file=users_$RANDOM.txt

#grep $USER /etc/passwd > /resultat/text$nombre.text

test -d resultat

teste=$?

echo $teste

if [ $teste -ne 0 ]

then

   echo "création dossier des resultat :"

   $(mkdir resultat)

fi


echo "fichier crée pour l'utilisateur connecté:"$file

echo "fichier crée pour tout les utlisataurs de cette machine :"$users_file

#sed ' ' /etc/passwd > ./resultat/$users_file

sed ' '  /etc/passwd > ./resultat/$users_file

grep $USER /etc/passwd > ./resultat/$file

exit 0


