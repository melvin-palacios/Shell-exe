#!/usr/bin/bash

echo wc -l Shell_Userlist.csv > a
nb_ligne=`expr $nb + 1`
echo $nb_ligne
nb_li=13
i=2
while [ $i != $nb_li ]
do
	sed -n '$i p' Shell_Userlist.csv > buff.txt
	if $(cut -d ","  -f 5 buff.txt) == "Admin"
		then
		nom=$(cut -d ","  -f 3 buff.txt)
		echo $nom
		id=$(cut -d ","  -f 1 buff.txt)
		echo $id
		prenom=$(cut -d ","  -f 2 buff.txt)
		mdp=$(cut -d ","  -f 4 buff.txt)
		#adduser "$prenom$nom"
		#usermod -u $id "$prenom$nom"
		#passwrd $mdp "$prenom$nom"
		#gpasswd -a "$prenom$nom" User
		$i++	
	elif
		nom=$(cut -d ","  -f 3 buff.txt)
                echo $nom
                id=$(cut -d ","  -f 1 buff.txt)
                echo $id
                prenom=$(cut -d ","  -f 2 buff.txt)
                mdp=$(cut -d ","  -f 4 buff.txt)
                #adduser "$prenom$nom"
                #usermod -u $id "$prenom$nom"
                #passwrd $mdp "$prenom$nom"
		#gpasswd -a "$prenom$nom" Admin
		$i++
	fi
done
