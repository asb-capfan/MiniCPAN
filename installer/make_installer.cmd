echo OFF
cls
del minicpan-installer.msi

REM reset the dist DB
call ../bin/create_db.pl

SET PATH=%PATH%;%WIX%\bin
candle minicpan-installer.wxs
light minicpan-installer.wixobj -sice:ICE91