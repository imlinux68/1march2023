#!/bin/bash
echo "1. make dirs in home dir"
cd ~
rm -rf zoo
mkdir -p zoo/{predatoy/{table,leopard},birds/{parrot,chair}}

echo "2.1 fix names"
mv zoo/predatory/table zoo/predatory/lion
ls zoo/predatory/

echo "2.2 write fact to lion"
echo "parrots and lions" > zoo/predatory/lion/facts

echo "2.3 copy fact to parrot dir"
cp zoo/predatory/lion/facts zoo/birds/parrot/

echo "2.4 rename chair to chicken"
mv zoo/birds/chair/ zoo/birds/chicken/
ls zoo/birds/

echo "3. create 9 chickens"
touch zoo/birds/chicken/chicken{1..9}
ls zoo/birds/chicken/

echo "4. displlay reverse chickens"
ls -lr zoo/birds/chicken/ | tee zoo/birds/chicken/iChick
ls zoo/birds/chicken/

echo "5. creating babyshark group"
sudo groupadd babyshark
cat /etc/group | grep babyshark

echo "6.assigning read perms to others in x\chicken"
chmod -R g=r zoo/birds/chicken/

echo "7. display other perms"
ls -l zoo/birds/chicken/ | grep ^.......... | cut -c 8-10 | tee -a zoo/birds/chicken/iChick
cat zoo/birds/chicken/iChick

echo "8. delete zoo dir"
rm -rf zoo

echo "9. delete babyshark group"
sudo groupdel babyshark
cat /etc/group

echo "10. create Linux file"
echo -e “Linux is a great os.\nlinux is an opernsource. unix is free os.\nlearn operating system.\nlinux is easy to learn. \nlinux is a multiuser os. \nlearn unix. unix is \npowerful.” > Linux

echo "11. search linux words"
cat Linux | grep linux










