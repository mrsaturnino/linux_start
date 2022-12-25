#!/bin/bash

echo "desfazendo alterações do script..."

cd /

rmdir public/
rmdir adm/
rmdir ven/

userdel -r -f andre
userdel -r -f maria
userdel -r -f carlos
userdel -r -f amanda
userdel -r -f eunice
userdel -r -f jose
userdel -r -f pascal
userdel -r -f pedro
userdel -r -f roberto

groupdel gp_ADM
groupdel gp_VEN
groupdel gp_SEC

