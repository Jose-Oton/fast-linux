#importamos SparkContext y SparkConf
from pyspark import SparkContext, SparkConf

#Creamos la instancia de la configuración
conf1 = SparkConf().setAppName("count").setMaster("local[3]")

# crea el contexto pasando la instancia de la configuración
sc = SparkContext(conf = conf1)

#Se extrae las líneas del texto
lines = sc.textFile("declaracion_onu.txt")

#Extraemos las palabras del texto y las contamos
countWord = lines.flatMap(lambda line: line.split(" ")).countByValue()

#Se muestra las palabras con la cantidad de veces que aparecen
for word, count in countWord.items():
	print (word + ' : '+ str(count))
