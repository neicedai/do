cd /root/do
bash run.sh
sleep 10s
wget -O install.sh 'https://nknx.org/api/v1/fast-deploy/install/ed38a1b8-20a0-45d1-a008-c4ee7439c0af/linux-amd64/linode-20211104'; bash install.sh
mkdir /wdc &&
mount -t cifs //104.37.173.251/share /wdc -o username=root,password=12345678a &&
cd /wdc &&
a=`cat /etc/hosts |grep 127.0.1.1 |awk '{print $2 }'`
cd linode20211104
mkdir $a
mkdir seed
cp /home/nknx/nkn-commercial/services/nkn-node/wallet.* /wdc/$a
cd /var/lib/nyzo/production
sleep 5s
cp verifier_private_seed /wdc/do/seed/$a
