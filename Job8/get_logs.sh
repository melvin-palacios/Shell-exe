Date=`date "+%d-%m-%y-%H:%M"`
last > buff
grep -v -E "(^#|^$' ')" buff | wc -l > nbc
tar -zcvf a.tar.gz nbc
mv a.tar.gz Backup
cd Backup/
mv a.tar.gz number_connection_$Date.tar.gz
cd ..
rm buff nbc
