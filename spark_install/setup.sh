#!/bin/bash
cp -p $SPARK_HOME/conf/spark-env.sh.template $SPARK_HOME/conf/spark-env.sh
echo "export JAVA_HOME=$JAVA_HOME" >> $SPARK_HOME/conf/spark-env.sh
echo "export SPARK_WORKER_CORES=4" >> $SPARK_HOME/conf/spark-env.sh
echo "slave01" > $SPARK_HOME/conf/slaves
echo "slave02" >> $SPARK_HOME/conf/slaves
echo "slave03" >> $SPARK_HOME/conf/slaves
echo "slave04" >> $SPARK_HOME/conf/slaves
