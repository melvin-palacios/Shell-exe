Date=`date "+%d-%m-%y-%H:%M"`
sudo cat /var/log/auth.log | grep -c "session opened" > nbc 
cat nbc
tar -zcvf a.tar.gz nbc
mv a.tar.gz Backup
cd Backup/
mv a.tar.gz number_connection_$Date.tar.gz
cd ..
rm nbc
