#!/bin/bash

# Check the system architecture
ARCH=$(uname -m)

echo "＃本工具将安装输入整形图形管理界面【Klipper Easy Input Shaper】"
echo "＃作者：MagicPhoenix【github】由B站铜牌杰瑞【klipper.club】优化"
echo "＃安装可能对你的原系统造成损害，是否继续 (y/n)"
read -r confirmation

if [ "$confirmation" != "y" ]; then
    echo "Installation cancelled."
    exit 0
fi

if [ "$ARCH" == "armv7l" ]; then
    # 32-bit ARM system
    echo "32系统"
    cd ~
    git clone https://github.com/Jerry3DP/EIS
    cd EIS
    chmod +x ./eis
    chmod +x install.sh
    sudo ./install.sh
    nohup ./eis &
	
	(crontab -l 2>/dev/null || echo '# 无crontab，此为新建') | crontab -
	crontab -l > /tmp/crontab.txt
	echo '@reboot /bin/bash -c "cd $HOME/EIS && nohup ./eis &"' >> /tmp/crontab.txt
	crontab /tmp/crontab.txt
	
elif [ "$ARCH" == "aarch64" ]; then
    # 64-bit ARM system
    echo "64位系统"
	cd ~
    git clone https://github.com/Jerry3DP/EIS
    cd EIS
    chmod +x ./eis_64
    chmod +x install.sh
    sudo ./install.sh
    nohup ./eis_64 &
	
	(crontab -l 2>/dev/null || echo '# 无crontab，此为新建') | crontab -
	crontab -l > /tmp/crontab.txt
	echo '@reboot /bin/bash -c "cd $HOME/EIS && nohup ./eis_64 &"' >> /tmp/crontab.txt
	crontab /tmp/crontab.txt
	
else
    echo "不适合的系统"
    exit 1
fi