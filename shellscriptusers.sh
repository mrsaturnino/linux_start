#!/bin/bash

echo "shellscript created by @mrsaturnino"
echo "creating system directories..."

cd /

mkdir public
mkdir adm
mkdir ven
mkdir sec

echo "system directories created with success."

echo "creating system groups..."

cd /

groupadd gp_ADM

groupadd gp_VEN

groupadd gp_SEC


echo "groups added."

echo "creating system users..."

echo "creating group_ADM users..."

useradd carlos -c "carlos santana" -m -s /bin/bash -p $(openssl passwd -crypt 123adm)

useradd andre -c "andre saturnino" -m -s /bin/bash -p $(openssl passwd -crypt 123adm)

useradd maria -c "maria costa" -m -s /bin/bash -p $(openssl passwd -crypt 123adm)

echo "group_ADM users created."

echo "creating group_VEN users"

useradd eunice -c "eunice santos" -m -s /bin/bash -p $(openssl passwd -crypt 123ven)

useradd pedro -c "pedro pipoca" -m -s /bin/bash -p $(openssl passwd -crypt 123ven)

useradd roberto -c "roberto rato" -m -s /bin/bash -p $(openssl passwd -crypt 123ven)

echo "group_VEN users created."


echo "creating group_SEC users"

useradd amanda -c "amanda emtudo" -m -s /bin/bash -p $(openssl passwd -crypt 123sec)

useradd jose -c "jose junho" -m -s /bin/bash -p $(openssl passwd -crypt 123sec)

useradd pascal -c "pascal pascoa" -m -s /bin/bash -p $(openssl passwd -crypt 123sec)

echo "group_SEC users created."

echo "adding users to their groups..."


usermod -G gp_ADM andre
usermod -G gp_ADM carlos
usermod -G gp_ADM maria
echo "andre, carlos and maria added to group_ADM."

usermod -G gp_VEN eunice
usermod -G gp_VEN pedro
usermod -G gp_VEN roberto
echo "eunice, pedro and roberto added to group_VEN."

usermod -G gp_SEC amanda
usermod -G gp_SEC jose
usermod -G gp_SEC pascal
echo "amanda, jose and pascal added to group_SEC."


chmod 777 /public/ 
echo "all the rwx permissions have been added to /public/ directory to all groups."


chmod 770 /adm/
chown :gp_ADM /adm/
echo "all the rwx permissions have been added to gp_ADM to /adm/ directory."

chmod 770 /ven/
chown :gp_VEN /ven/
echo "all the rwx permissions have been added to gp_VEN to /ven/ directory."

chmod 770 /sec/
chown :gp_SEC /sec/
echo "all the rwx permissions have been added to gp_SEC to /sec/ directory."

echo "the shellscript 'criar usuarios, grupos, diretorios e permissoes' has been executed."















