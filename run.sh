sleep $[RANDOM%20]s &&
cd /wdc &&
###gai-1
sleep $[RANDOM%40]s &&
cd do1111 &&
sleep $[RANDOM%30]s &&
wget -qO- http://ipecho.net/plain >> ip &&
sleep $[RANDOM%10]s &&
a=`cat num` &&
b=`expr $a + 1` &&
echo $b > num &&
mkdir $a &&
cd /home/ &&
mkdir ubuntu &&
cd ubuntu &&
sudo apt update -y &&
sudo apt install git -y &&
sudo apt install haveged openjdk-8-jdk supervisor -y && sudo git clone https://github.com/n-y-z-o/nyzoVerifier.git &&
cd /home/ubuntu/nyzoVerifier &&
sudo ./gradlew build &&
sudo mkdir -p /var/lib/nyzo/production &&
sudo cp trusted_entry_points /var/lib/nyzo/production &&
chmod +x nyzoVerifier.sh &&
./nyzoVerifier.sh &&
sudo cp nyzoVerifier.conf /etc/supervisor/conf.d/ &&
###gai-2
sudo bash -c 'echo "aawdc-1111-'$a'" > /var/lib/nyzo/production/nickname' &&
supervisorctl reload &&
sleep 10s &&
cd /home &&
###gai-3
wget -O install.sh 'https://nknx.org/api/v1/fast-deploy/install/ed38a1b8-20a0-45d1-a008-c4ee7439c0af/linux-amd64/do-20211111'; bash install.sh
###gai-4
cp /home/nknx/nkn-commercial/services/nkn-node/wallet.* /wdc/do1111/$a &&
sleep 3s &&
wget -qO- http://ipecho.net/plain >> /root/temp &&
echo "`cat /root/temp`:9444:`cat /var/lib/nyzo/production/verifier_private_seed`" >> /root/seed &&
###gai-5
cp /root/seed /wdc/do1111/seed/$a
