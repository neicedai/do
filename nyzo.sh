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

sudo bash -c 'echo aawdc-$RANDOM-linode > /var/lib/nyzo/production/nickname' 
