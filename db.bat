title GreenOdoo11 x64 fast - www.sunpop.cn
SET PATH="%CD%"\runtime\pgsql\bin;"%CD%"\runtime\python;%CD%\runtime\win32\wkhtmltopdf;%CD%\runtime\win32\nodejs;%PATH%
%CD%\runtime\pgsql\bin\pg_ctl stop -D %CD%\runtime\pgsql\data -s -m fast
%CD%\runtime\bin\pv.exe -f -k postgres.exe -q
%CD%\runtime\pgsql\bin\pg_ctl -D %CD%\runtime\pgsql\data -l %CD%\runtime\pgsql\logfile start
