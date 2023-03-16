sudo pacman -S zsa-wally 

sudo touch /etc/udev/rules.d/50-zsa.rules

sudo groupadd plugdev
sudo usermod -aG plugdev $USER

echo "paste the config from https://github.com/zsa/wally/wiki/Linux-install#2-create-a-udev-rule-file into /etc/udev/rules.d/50-zsa.rules"
