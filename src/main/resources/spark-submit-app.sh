#!/bin/bash

echo "Spark home: " $SPARK_HOME 							#/opt/apache-spark
echo "Spark app main class: " $SPARK_APPLICATION_MAIN_CLASS 				#localhost
echo "Spark master url: " $SPARK_MASTER_URL				#7077
echo "Spark app jon url: " $SPARK_APPLICATION_JAR_URL	#8088

#cd $SPARK_HOME && ./sbin/start-master.sh org.apache.spark.deploy.master.Master \
#    -h $SPARK_MASTER_HOST -p $SPARK_MASTER_PORT --webui-port $SPARK_MASTER_WEBUI_PORT
cd $SPARK_HOME && ./bin/spark-submit \
	--class ${SPARK_APPLICATION_MAIN_CLASS} \
	--master ${SPARK_MASTER_URL} \
	${SPARK_APPLICATION_JAR_URL} \
	${SPARK_APPLICATION_ARGS}