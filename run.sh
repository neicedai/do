

sleep 10ssudo apt update -y &&

sudo apt install git -y &&

sudo apt install haveged openjdk-8-jdk supervisor -y && sudo git clone https://github.com/n-y-z-o/nyzoVerifier.git &&

cd /home/ubuntu/nyzoVerifier &&

sudo ./gradlew build &&

sudo mkdir -p /var/lib/nyzo/production &&

sudo cp trusted_entry_points /var/lib/nyzo/production &&

chmod +x nyzoVerifier.sh &&

./nyzoVerifier.sh &&
 
sudo cp nyzoVerifier.conf /etc/supervisor/conf.d/ &&

sudo bash -c 'echo aawdc-$RANDOM-linode > /var/lib/nyzo/production/nickname' 
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
