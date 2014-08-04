sudo ­-i

apt-get install zip unzip
echo "install zip/unzip"

mkdir -p /root/bin
echo "Make directory /root/bin"

cd /root/bin
wget "https://git-wip-us.apache.org/repos/asf?p=stratos.git;a=blob_plain;f=tools/puppet3-agent/config.sh;hb=HEAD" -O config.sh
chmod +x config.sh
wget "https://git-wip-us.apache.org/repos/asf?p=stratos.git;a=blob_plain;f=tools/puppet3-agent/init.sh;hb=HEAD" -O init.sh
chmod +x init.sh
mkdir -p /root/bin/puppetinstall
wget "https://git-wip-us.apache.org/repos/asf?p=stratos.git;a=blob_plain;f=tools/puppet3-agent/puppetinstall/puppetinstall;hb=HEAD" -O puppetinstall/puppetinstall
chmod +x puppetinstall/puppetinstall
wget "https://git-wip-us.apache.org/repos/asf?p=stratos.git;a=blob_plain;f=tools/puppet3-agent/stratos_sendinfo.rb;hb=HEAD" -O stratos_sendinfo.rb

sed -i 's:^TIMEZONE=.*$:TIMEZONE=\"Etc/UTC\":g' /root/bin/puppetinstall/puppetinstall

echo "Downloads complete.If you need to make a generic cartridge, please execute the config.sh file and provide the Stratos service-name, p uppet master IP, and puppet master hostname when prompted "
