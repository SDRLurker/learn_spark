# https://www.slideshare.net/TaeYoungLee1/20141029-25-hive
TODAY=`date '%y%m%d'`
HADOOP_ENV_DIR=$HADOOP_HOME/etc/hadoop
# https://stackoverflow.com/questions/638975/how-do-i-tell-if-a-regular-file-does-not-exist-in-bash
if [ ! -f $HADOOP_HOME/etc/hadoop.tar.gz ]; then
    echo "File not found!"
    tar cvfz $HADOOP_HOME/etc/hadoop.tar.gz $HADOOP_ENV_DIR
fi
# 44/80
cp -p $HADOOP_ENV_DIR/hadoop-env.sh $HADOOP_ENV_DIR/hadoop-env.sh.$TODAY
cat hadoop-env.txt $HADOOP_ENV_DIR/hadoop-env.sh.$TODAY > $HADOOP_ENV_DIR/hadoop-env.sh
# 45/80
cp -p $HADOOP_ENV_DIR/yarn-env.sh $HADOOP_ENV_DIR/yarn-env.sh.$TODAY
cat hadoop-env.txt $HADOOP_ENV_DIR/yarn-env.sh.$TODAY > $HADOOP_ENV_DIR/yarn-env.sh
# 47/80
# https://stackoverflow.com/questions/16715373/insert-contents-of-a-file-after-specific-pattern-match
mkdir -p /root/hadoop/tmp
sed -i '/<configuration>/ r core-site.xml' $HADOOP_HOME/etc/hadoop/core-site.xml 
# 48/80
sed -i '/<configuration>/ r hdfs-site.xml' $HADOOP_HOME/etc/hadoop/hdfs-site.xml 
# 49/80
sed -i '/<configuration>/ r mapred-site.xml' $HADOOP_HOME/etc/hadoop/mapred-site.xml 
# 50/80
sed -i '/<configuration>/ r yarn-site.xml' $HADOOP_HOME/etc/hadoop/yarn-site.xml 
# 51/80
scp -rp $HADOOP_HOME master:/opt/hadoop/.
scp -rp $HADOOP_HOME slave01:/opt/hadoop/.
scp -rp $HADOOP_HOME slave02:/opt/hadoop/.
scp -rp $HADOOP_HOME slave03:/opt/hadoop/.
scp -rp $HADOOP_HOME slave04:/opt/hadoop/.
