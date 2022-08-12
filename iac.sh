bin/bash

echo "Criando diretórios"


mkdir /publico 
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos"

groupadd grp_adm
groupadd grp_ven
groupadd grp_sec

echo "Criando usuarios"

useradd carlos -m -s /bin/bash -p $(openssl passwd -crypt Senha123@)
useradd maria -m -s /bin/bash -p $(openssl passwd -crypt Senha123@)
useradd joao -m -s /bin/bash -p $(openssl passwd -crypt Senha123@)

useradd debora -m -s /bin/bash -p $(openssl passwd -crypt Senha123@)
useradd sebastiana -m -s /bin/bash -p $(openssl passwd -crypt Senha123@)
useradd roberto -m -s /bin/bash -p $(openssl passwd -crypt Senha123@)

useradd josefina -m -s /bin/bash -p $(openssl passwd -crypt Senha123@)
useradd amanda -m -s /bin/bash -p $(openssl passwd -crypt Senha123@)
useradd rogerio -m -s /bin/bash -p $(openssl passwd -crypt Senha123@)

echo "Adicionando usuarios aos grupos"

gpasswd -a carlos grp_adm
gpasswd -a maria grp_adm
gpasswd -a joao grp_adm

gpasswd -a debora grp_ven
gpasswd -a sebastiana grp_ven
gpasswd -a roberto grp_ven

gpasswd -a josefina grp_sec
gpasswd -a amanda grp_sec
gpasswd -a rogerio grp_sec

echo "Criando permissões"


chown root:grp_adm /adm
chown root:grp_ven /ven
chown root:grp_sec /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Tudo pronto"
