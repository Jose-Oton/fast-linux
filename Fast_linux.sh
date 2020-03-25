#*************************************************
#***************FAST LINUX************************
#*************************************************

#Number of lines and last line
wc -l spark_examples.py 

#Only number of lines
wc -l spark_examples.py | awk '{print $1}'

#First column
awk '{print $1}' spark_examples.py

#Find with grep
grep -nw pyspark spark_examples.py 
grep -n pyspark spark_examples.py 
grep -n lines spark_examples.py 
grep -nw lines spark_examples.py 
grep -nwr lines spark_examples.py 
grep -n lines spark_examples.py 
grep -ni lines spark_examples.py 

#head tail...
head -n 10 | awk -F ',' '{print $3}' MOCK_DATA.csv 
head -n 10 MOCK_DATA.csv | awk -F ',' '{print $3}' 
tail -n 10 MOCK_DATA.csv | awk -F ',' '{print $3}' 
tail -n 10 MOCK_DATA.csv | awk -F ',' '{print $1 $2 $3}' 
tail -n 10 MOCK_DATA.csv | awk -F ',' '{print $1, $2, $3}' 
 

#Awk with text delimiter
awk -F ',' '{print $3}' MOCK_DATA.csv 
grep -nw -m 2 MOCK_DATA.csv 
grep -ni lines -m 1 MOCK_DATA.csv 
grep -n .com  -m 5 MOCK_DATA.csv 
grep -n .com  -m 5  MOCK_DATA.csv | grep -v adobe

#Change lines with sed
sed -i 's/adobe/pollos/g' MOCK_DATA.csv 

sed 's/$/[|]/' seguros_tkcdspfn001.csv >> error.csv
sed 's/"//' 
#tar
#Extract an archive
tar -xzvf archive.tar.gz
#Compress an entire directory or a single file
tar -czvf name-of-archive.tar.gz /path/to/directory-or-file
#md5
md5sum

# more, less
more MOCK_DATA.csv
less MOCK_DATA.csv
#Locate
locate
# updatedb 
sudo updatedb
locate MOCK_DATA.csv

#modulos
#sudo modprobe

#log hardware
dmsg
cfdisk



adduser
usermod
passwd
userdel

#El comando find nos permite realizar la búsqueda de cualquier tipo de archivo en el sistema de archivos.
find . -type f -name *php
#Buscara todos los archivos que terminen en php.

#El comando man nos permite mostrar  las páginas de ayuda (manuales) de los distintos comandos.
man -k awk
#Buscara la palabra awk entre los distintos manuales de los comandos existentes en el sistema.


#Permisos estándar
#Permiso		aplicado a archivo	Aplicado a directorio 	val num
#Lectura 	abrir archivo		ls dir			4
#Escritura	cambiar cont del arch	crear,eliminar arch y modificar permisos	2
#ejecución	ejecutar el archivo	cambiar de dir		1

#El comando chmod permite cambiar los permisos de un archivo o directorio.
$chmod 777 archivo.txt
$chmod u+rwx,g+r,o-rwx archivo.txt
$chmod +x archivo.txt

#Manejo de la propiedad de los archivos
#El comando chown permite cambiar el propietario y grupo de un archivo o directorio.
$chown admin:admin archivo.txt
#El comando chgrp permite cambiar el grupo de un archivo o directorio.
$chgrp admin archivo.txt

#Access List Control o ACL
#Listar los permisos ACL de un archivo o directorio:
$getfacl home/john/picture.png
# owner: john
# group: john
user::rw-
group::r--
other::r--

#Definir permisos ACL a un archivo:
$setfacl  u:admin:r-- archivo.txt

#Copiar datos a un servidor
scp -i ~/.ssh/id_rsa /home/jocamach/Documentos/insumosWork/sicoco.tar.gz MB87057@10.52.224.141:/home/MB87057/

#Conectarse a un servidor
ssh -i ~/.ssh/workmx workmx@10.52.226.14






##################################################################
######################## HDFS COMMANDS ###########################
##################################################################

hdfs dfs -ls /data/master/mdco/data/retailBusinessBanking/t_mdco_loan_attr/

hdfs dfs -rm -r /data/master/mdco/data/retailBusinessBanking/t_mdco_loan_attr/*

hdfs dfs -rm -r /data/master/mdco/data/retailBusinessBanking/t_mdco_loan_attr/gl_date=2019-01-15

hdfs dfs -put <archivo_a_subir | *> /data/master/mdco/data/retailBusinessBanking/t_mdco_loan_attr/

hdfs dfs -get <archivo_a_bajar | *> /data/master/mdco/data/retailBusinessBanking/t_mdco_loan_attr/



