title GreenOdoo11 x64 fast - www.sunpop.cn
d:
cd \odoo11-x64
d:\odoo11-x64\runtime\bin\pv.exe -f -k python.exe -q
d:\odoo11-x64\runtime\bin\pv.exe -f -k python3.exe -q
d:\odoo11-x64\runtime\pgsql\bin\pg_ctl stop -D d:\odoo11-x64\runtime\pgsql\data -s -m fast
d:\odoo11-x64\runtime\bin\pv.exe -f -k postgres.exe -q
tskill postgres
tskill python
tskill python3
tskill nginx
SET PATH=d:\odoo11-x64\runtime\pgsql\bin;d:\odoo11-x64\runtime\python3;d:\odoo11-x64\runtime\python3\scripts;d:\odoo11-x64\runtime\win32\wkhtmltopdf;d:\odoo11-x64\runtime\win32\nodejs;d:\odoo11-x64\source;%PATH%
ping -n 2 127.0.0.1>nul
d:\odoo11-x64\runtime\pgsql\bin\pg_ctl -D d:\odoo11-x64\runtime\pgsql\data -l d:\odoo11-x64\runtime\pgsql\logfile start
cd \odoo11-x64\runtime\nginx &START nginx.exe &cd.. &cd..