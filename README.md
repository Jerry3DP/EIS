## 说明
本工具来源于大神MagicPhoenix，我只是修改了小毛病并且做成了一键安装脚本。
我非专业码农，有bug基本改不了，所以，如果要改bug请到原作者那边提交。

修改有：
1、针对32位和64位系统自动选择。\n
2、加了自动运行代码，原作者可能忘记了这一步了。\n
3、中文化。\n
4、后台添加使用引导。\n
5、制作一键脚本，方便新手玩家安装。\n

## 一键安装
ssh客户端中，复制粘贴下面代码进行一键安装，过程中会说要sudo权限，输入当前用户密码就行。
```shell
cd ~ && wget https://raw.githubusercontent.com/Jerry3DP/EIS/main/eisok.sh && chmod +x eisok.sh && ./eisok.sh
```


## 以下是原作者的说明，我保留完整内容。

## Easy Input Shaper UI

It provide a web-ui for running `SHAPER_CALIBRATE` and generate charts.

![image-20230426104629163](https://img.mpx.wiki/i/2023/04/26/6448908838c9c.webp)

![image-20230426105049366](https://img.mpx.wiki/i/2023/04/26/6448918c644f5.webp)



## Usage 

### Install 

> The current executable only works on ARM. If you use it on x86, you need to compile it yourself.

```shell
cd ~
git clone https://github.com/MagicPhoenix/EIS
cd EIS
chmod +x ./eis
chmod +x install.sh
sudo ./install.sh  
nohup ./eis &
```

Open http://\<your-ip\>:8080

Set Socket Config and Path Config

> Only need to set them once, and it will be saved automatically.

You can see socket address here

![image-20230426111842338](https://img.mpx.wiki/i/2023/04/26/64489814881e9.webp) 

![image-20230426111854094](https://img.mpx.wiki/i/2023/04/26/6448981fb07cf.webp)

![image-20230426112046247](https://img.mpx.wiki/i/2023/04/26/64489890f037c.webp)

Path is your klipper path, usually it's `/home/pi/klipper`, for CB1 it's `/home/biqu/klipper`

![image-20230426112136416](https://img.mpx.wiki/i/2023/04/26/644898c2c4d69.webp)

That's all, now you can click ` +New Test` , when it shows 100% Command completed, just refresh the webpage.

** Must home and qgl before test 



### Compile

If the stock binary file does not work, you can try compiling it

```shell
cd ~
git clone https://github.com/MagicPhoenix/EIS
cd EIS
wget -qO- https://raw.githubusercontent.com/voidint/g/master/install.sh | bash
source /home/pi/.g/env
g install 1.18
go mod tidy 
rm eis
go build -o eis main.go 
chmod +x eis

```

Then follow `Install` above 

## PR

Welcome any PR. 
