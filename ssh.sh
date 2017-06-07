#!/bin/bash
cat << MENU
>>>>>>>>>>>>>ENVIRONMENT:<<<<<<<<<<<<<<<

a.SZ-YW
b.NJ-4A
c.BJ-4A
d.CEPH-TEST-10-109
e.CEPH-TEST-VM
f.Unix-TEST
g.4A

Appendix:

EBS:
SCQ:            SZ_scq_ebs@72H5f1
YFY:            SZ_yfy_ebs@5s7w01
YFQ:            SZ_yfq_ebs@w98L43

EC:
OLD-FUEL:       SZ_scq_fuel@72H5f1
SCQ:            SZ_scq_bcec@72H5f1
YFY:            SZ_yfy_bcec@5s7w01
YFQ:            SZ_yfq_bcec@w98L43
>>>>>>>>>Please Choose one ENV:<<<<<<<<<<

MENU

read -p "Your choice:" id

case $id in
    a)
    exec /usr/local/bin/sshpass -p cmcc@123  ssh root@10.142.34.25 -p 22 
    ;;
    b)
    exec /usr/local/bin/sshpass -p iM^ck8e%!L  ssh zhanghao@10.1.0.1
    ;;
    c)
    exec /usr/local/bin/sshpass -p EBS@#*Api418 ssh BJ-YW-zhanghao@10.8.8.1 -p 22
    ;;
    d)
    exec /usr/local/bin/sshpass -p EBS@#*Api418  ssh -o StrictHostKeyChecking=no -p 62222 root@10.254.10.109
    ;;
    e)
    exec /usr/bin/ssh  root@223.105.1.166 
    ;;
    f)
    exec /usr/local/bin/sshpass -p linux123!@# ssh root@10.136.4.55
    ;;
    g)
    exec /usr/local/bin/sshpass -p Zhanghao@234 ssh zhanghao@10.129.0.1 -p 60022
    ;;
    *)
    read -p "Please type your address:" ip
    exec /usr/bin/ssh  root@$ip
    ;;
esac
