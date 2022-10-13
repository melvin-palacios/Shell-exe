#!/usr/bin/bash

MY_INPUT='/home/debian/Documents/script/Job9/Shell_Userlist.csv'
while IFS=, read -r Col0 Col1 Col2 Col3 Role ; do
echo "$Nom" | "$Prenom" | "$Id" | "$Role" | "$Mdp"
done <"$MY_INPUT"

