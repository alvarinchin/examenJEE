#!/bin/bash
#primer parametro carpeta a añadir
#segundo parámetro repositorio 
#tercer parámetro branch


	git add ${1-"-A"}

	git commit 

	git push ${1-"origin"} ${1-"master"}



