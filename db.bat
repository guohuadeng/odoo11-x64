title GreenOdoo11 x64 fast - www.sunpop.cn
SET PATH=%CD%\runtime\pgsql\bin;%CD%\runtime\python;%CD%\runtime\python\scripts;%CD%\runtime\win32\wkhtmltopdf;%CD%\runtime\win32\nodejs;
%CD%\runtime\pgsql\bin\pg_ctl stop -D %CD%\runtime\pgsql\data -s -m fast
%CD%\runtime\bin\pv.exe -f -k postgres.exe -q
tskill postgres
tskill python
tskill nginx
ping -n 3 127.0.0.1>nul
cd .\runtime\nginx & START nginx.exe &cd.. &cd..
%CD%\runtime\pgsql\bin\pg_ctl -D %CD%\runtime\pgsql\data -l %CD%\runtime\pgsql\logfile start
