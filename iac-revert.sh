bin/bash

echo "Removendo diretórios"

rm -r /publico 
rm -r /adm
rm -r /ven
rm -r /sec

echo "Removendo grupos"

groupdel  grp_adm
groupdel  grp_ven
groupdel  grp_sec

echo "Removendo usuarios"

userdel -r -f carlos
userdel -r -f maria 
userdel -r -f joao 

userdel -r -f debora 
userdel -r -f sebastiana
userdel -r -f roberto

userdel -r -f josefina
userdel -r -f amanda
userdel -r -f rogerio

echo "Tudo pronto"
