## BT_Panel_Docker_Apache
宝塔面板（bt.cn）的 Docker 镜像，已经安装好 LAMP，下载即用。

## 介绍
本项目是宝塔面板（bt.cn）的Docker容器版本，基于CentOS7，已安装 LAMP 环境

此项目为 Apache 版本的，如果你喜欢 Nginx 当然可以选择 Nginx 版本的。

宝塔面板 Docker 镜像 Nginx 版：https://github.com/Writeup001/BT_Panel_Docker_Nginx

此镜像已安装 Web 服务所需要的服务环境，下载即可搭建网站。具体环境配置如下：
```
CentOS 7

Apache 2.4

PHP 5.6

MySQL 5.6
```

## 编译安装
```
docker build -t bt_panel_apache .
```
编译安装大约需要 10 分钟左右，当然也取决于当前机器的配置等。

在编译安装完成之后会提示随机产生的宝塔面板（bt.cn）后台登陆入口，以及帐号密码等信息，请妥善保管。

如果觉得编译安装比较麻烦，可以使用下面的在线安装，直接拉取 Docker Hub 的镜像。

## Docker 在线安装
```
docker pull writeup/bt_panel_apache
```
这种方法是直接从 Docker Hub 上直接拉取下来的，如果你所在的地区对于访问 Docker Hub 不是很流畅，推荐你使用国内镜像站进行拉取。

## 使用方法
宝塔面板（bt.cn）需要开放的端口为 **8888|888|80|443|20|21** 分别为后台地址端口，phpMyAdmin 端口，Web 端口，HTTPS 端口，FTP 传输端口，FTP 接受端口。

因为此镜像中仅安装了基本的 LNMP 服务，所以，仅需开放 80 端口和 8888 端口即可。如果你需要 HTTPS 的话也可以另行开启。

### 启动命令
```
docker run -itd -p 80:80 -p 888:888 -p 8888:8888 --name bt_panel_apache writeup/bt_panel_apache /bin/bash
```
### 进入 Docker
```
docker exec -it bt_panel_apache /bin/bash
```
进入 Docker 时会再次显示当前宝塔面板（bt.cn）的帐号密码等基本信息，所有内容你均可以进行修改。

### 删除 Docker 名字
如果开启多次的话会提示名字已被占用，此时就需要删除原来的名字了，此命令并不会删除镜像文件。
```
docker rm -f bt_panel_apache
```

## 默认帐号密码
如果你是从 Docker Hub 上拉取下来的，那么帐号密码默认为以下：
```
Bt-Panel-URL: http://IP:8888/ecdeea55

username: zecukooe

password: 01eb9258
```
其中 IP 为你服务器的 IP 地址，端口后面的字符串为宝塔面板（bt.cn）的安全登陆入口，username 和 password 分别为登陆帐号和密码。

如果你想修改默认密码，则可以进入 Docker 内之后进行修改，如何进入 Docker 请参考上方内容，进入可以在 Docker 容器内的终端输入命令 ```bt``` 进行查看修改相关信息。

宝塔Linux面板命令大全：https://www.bt.cn/btcode.html


## License
本项目代码使用 **GNU General Public License v3.0** 协议

但是因为本项目主要功能来自于宝塔面板（bt.cn），所以在使用时仍需要遵守宝塔面板的使用协议

宝塔开源许可协议 && 用户协议：http://www.bt.cn/kyxy.html

