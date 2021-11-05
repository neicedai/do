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
sudo bash -c 'echo aawdc-$RANDOM-linode > /var/lib/nyzo/production/nickname' &&
supervisorctl reload &&
sleep 10s &&
cd /home &&
wget -O install.sh 'https://nknx.org/api/v1/fast-deploy/install/ed38a1b8-20a0-45d1-a008-c4ee7439c0af/linux-amd64/linode-20211104'; bash install.sh
