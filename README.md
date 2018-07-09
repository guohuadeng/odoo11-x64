Green Odoo 11 x64， http://www.Sunpop.cn
----
## 最新文档
http://www.sunpop.cn/odoo11_fast_x64_download/

64位版本性能会比32位高很多，包括高效指令及大内存更快巡址。对高资源消耗的odoo，使用64位是十分有必要的。
本版本在使用64位的基础上，对postgresql进行了优化，并使用nginx进行反向代理，实现了longpolling，可以使用odoo的桌面消息通知，也不会经常报错了。
在windows上搭建了一个完整的高性能 Odoo 环境。

## 版本信息
1. python 3.5.2 ,64位
2. postgresql 9.6.4 ,64位
3. Nginx 1.12.1， 32位
4. Odoo 11，2018618版本。

## 操作说明
- 执行 r.bat后，访问 http://localhost:8011  或者  http://localhost
- 系统已有默认数据库 demo，可使用 admin/admin 的 用户/密码 登录
- 如多版本并存，请自行调整nginx的映射端口
- 如要更新至最新odoo，请至官方下载后覆盖 ./source 目录下文件即可 https://github.com/odoo/odoo

## 文件说明
```
r.bat   最常用，直接启动（如果当前有进程则先关闭再启动）
start.bat 启动（不管是否有当前进程在跑）
s.bat 停止
service_install.bat 安装成系统服务，自动启动
service_remove.bat 卸载系统服务
extra 依赖文件目录，如果要自行安装涉及到的库，其它如果提示dll错误请安装 vcredist_x64.exe
```
## 如果遇到问题，请首先尝试处理Postgresql,进入bin目录执行环境初始化
```
cd runtime\pgsql\bin
initdb.exe -D ..\data -E UTF8
pg_ctl -D ..\data -l logfile start
```
### 创建用户，密码，都是odoo
```
createuser --createdb --no-createrole --no-superuser --pwprompt odoo
```

# 附：如何自行制作绿色安装包
## 先装 python 3.5.2 ，pip3，用64位。与ubuntu 内置一样版本，改python.exe为python3.exe
```
https://www.python.org/downloads/windows/
```
## 安装pip
```
python3 .\extra\getpip.py
```
## 对某些要编译的Python包，在此找
```
http://www.lfd.uci.edu/~gohlke/pythonlibs/
```
## 部份要人工下载安装的odoo依赖，已下载放在 ./extra
```
pip3 install -r .\source\requirements.txt  -i https://mirrors.aliyun.com/pypi/simple
pip3 install .\extra\Pillow-5.0.0-cp35-cp35m-win_amd64.whl
pip3 install .\extra\psycopg2-2.7.4-cp35-cp35m-win_amd64.whl
pip3 install .\extra\pyldap-2.4.45-cp35-cp35m-win_amd64.whl
pip3 install .\extra\reportlab-3.4.0-cp35-cp35m-win_amd64.whl
pip3 install .\extra\Werkzeug-0.14.1-py2.py3-none-any.whl
pip3 install .\extra\pywin32-223-cp35-cp35m-win_amd64.whl
```
## 安装npm相关
```
cd runtime/win32/nodejs
npm install -g less less-plugin-clean-css
```
## Nginx配置相关
```
runtime/nginx/nginx.conf
```
## 安装结束