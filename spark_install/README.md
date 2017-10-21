# Install spark

<pre>
$ ./java.sh
엔터키
$ ./scala.sh
$ ./spark.sh
$ ./hadoop.sh
</pre>

## 멀티노드 설치

/etc/hosts 파일에 master, slave를 등록 
<pre>
master $ vi /etc/hosts
</pre>

비번 없이 접속하기 위해 authorized_keys localhost 및 원격서버 적용.
<pre>
master $ ssh-copy-id localhost
master $ ssh-copy-id slave01
master $ ssh-copy-id slave02
master $ ssh-copy-id slave03
master $ ssh-copy-id slave04
</pre>

하둡 멀티노드, 스파크 멀티노드 설치. 
<pre>
$ ./hd_multi.sh
$ ./setup.sh
</pre>

## 하둡 기동  

<pre>
$ cd $HADOOP_HOME/sbin
$ ./start-all.sh
</pre>

## 스파크 기동  

<pre>
$ cd $SPARK_HOME/sbin
$ ./start-all.sh
</pre>

# Install Maven

<pre>
$ ./maven.sh
</pre>

# Install Anaconda

<pre>
./anaconda.sh
yes
/opt/anaconda/anaconda3
</pre>
