#!/bin/bash 
# On deterministic-kernel

set -x 
mkdir -p kernel-sources/kernel
cd kernel-sources/kernel
wget https://www.kernel.org/pub/linux/kernel/v3.x/linux-3.2.53.tar.xz
wget https://www.kernel.org/pub/linux/kernel/v3.x/linux-3.2.53.tar.sign
unxz linux-3.2.53.tar.xz
chmod 755 linux-3.2.53.tar*

#cd ..
#mkdir -p grsecurity
#cd grsecurity
#wget http://grsecurity.net/stable/grsecurity-3.0-3.2.53-201312021727.patch
#wget http://grsecurity.net/stable/grsecurity-3.0-3.2.53-201312021727.patch.sig

chmod 755 grsecurity-3.0-3.2.53-201312021727.patch*

cd ../..

#deterministic-kernel

cd kernel-build/linux-3.2.53-securian-0.1.10-shell
faketime "2013-12-02 17:28:00" ./all.sh
set +x

