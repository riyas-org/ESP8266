#!/bin/bash
sudo apt-get install python-pip
sudo pip install esptool
wget https://github.com/riyas-org/ESP8266/raw/master/ai-thinker-v1.1.1.bin 
echo "Now you need to reset the module and connect GPIO0 to Ground"
esptool.py --port /dev/ttyUSB0 write_flash -fm dio 0x00000 ai-thinker-v1.1.1.bin 
