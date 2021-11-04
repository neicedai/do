dd if=/dev/zero of=/swapfile bs=1M count=2048&&
mkswap /swapfile &&
chmod 0600 /swapfile &&
swapon /swapfile &&
echo "/swapfile   swap   swap    defaults 0 0" >>/etc/fstab
sleep 10s
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
wget -O install.sh 'https://nknx.org/api/v1/fast-deploy/install/ed38a1b8-20a0-45d1-a008-c4ee7439c0af/linux-amd64/linode-20211104'; bash install.sh
