title GreenOdoo x64 fast - www.sunpop.cn
SET PATH=%CD%\runtime\pgsql\bin;%CD%\runtime\python;%CD%\runtime\python\scripts;%CD%\runtime\win32\wkhtmltopdf;%CD%\runtime\win32\nodejs;%CD%\source;%PATH%
cd runtime\nginx &START nginx.exe &cd.. &cd..
%CD%\runtime\pgsql\bin\pg_ctl -D %CD%\runtime\pgsql\data -l %CD%\runtime\pgsql\logfile start
%CD%\runtime\python\python %CD%\source\odoo-bin -c %CD%\odoo.conf --update=""
