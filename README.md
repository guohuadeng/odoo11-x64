Green Odoo 11 x64
----
1. python 2.7.13 ,64位
2. postgresql 9.6.4 ,64位
3. Nginx 1.12.1， 32位
4. Odoo 11 alpha ，20170817

##最新文档
http://www.sunpop.cn/odoo11_fast_x64_download/

64位版本性能会比32位高很多，包括高效指令及大内存更快巡址。对高资源消耗的odoo，使用64位是十分有必要的。
本版本在使用64位的基础上，对postgresql进行了优化，使用nginx进行反向代理，在windows上搭建了一个完整的高性能 Odoo 环境。

##操作说明
执行 r.bat后，访问
http://localhost
如多版本并存，请自行调整nginx的映射端口

##文件说明
r.bat   最常用，直接启动（如果当前有进程则先关闭再启动）
start.bat 启动（不管是否有当前进程在跑）
s.bat 停止
service_install.bat 安装成系统服务，自动启动
service_remove.bat 卸载系统服务
extra 依赖文件目录，如果要自行安装涉及到的库，其它如果提示dll错误请安装 vcredist_x64.exe

##先装pip
python extra\get-pip.py
##对某些要编译的Python包，在此找  python-ldap, gevent, psutil 
http://www.lfd.uci.edu/~gohlke/pythonlibs/
##安装依赖
pip install -r .\source\rwin.txt  -i https://mirrors.aliyun.com/pypi/simple
##Postgresql,进入bin目录执行环境初始化
cd runtime\pgsql\bin
initdb.exe -D ..\data -E UTF8
pg_ctl -D ..\data -l logfile start
###创建用户，密码，都是odoo
createuser --createdb --no-createrole --no-superuser --pwprompt odoo
##安装npm相关
cd runtime/win32/nodejs
npm install -g less less-plugin-clean-css
##Nginx配置相关
runtime/nginx/nginx.conf