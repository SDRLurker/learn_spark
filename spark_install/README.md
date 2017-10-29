# 스파크-하둡 멀티노드 세팅 스크립트

## hosts 파일 세팅  

### root 계정에서 다음을 실행합니다.

hosts 파일을 클라우드 IP대로 변경한뒤 모든 서버에 복사합니다.
<pre>
[root@ryanshin ~]# cd /etc
[root@ryanshin etc]# vi hosts
10.34.?.? master
10.33.?.? slave01
10.33.?.? slave02
10.33.?.? slave03
10.33.?.? slave04
[root@ryanshin etc]# scp -p hosts master:/etc/hosts
[root@ryanshin etc]# scp -p hosts slave01:/etc/hosts
[root@ryanshin etc]# scp -p hosts slave02:/etc/hosts
[root@ryanshin etc]# scp -p hosts slave03:/etc/hosts
[root@ryanshin etc]# scp -p hosts slave04:/etc/hosts
</pre>

## 모든 서버 세팅

모든 서버에서 다음작업을 진행합니다.

spark 계정을 만들고 해당 계정으로 들어갑니다.
<pre>
[root@master ~]# useradd spark
[root@master ~]# passwd spark
[root@master ~]# su - spark
</pre>

설정스크립트를 모두 다운 받고 다음 경로로 변경합니다.(~/learn_spark/spark_install)
<pre>
[spark@master ~]# git clone https://github.com/SDRLurker/learn_spark.git
[spark@master ~]# cd learn_spark
[spark@master learn_spark]$ cd spark_install
</pre>

### 서버 로그인없이 연결 설정

master, slave01~04 서버에 비밀번호 없이 로그인되도록 설정합니다.
<pre>
[spark@master spark_install]$ ./ssh.sh
</pre>

### 자바설치

Java를 설치합니다.
<pre>
[spark@master spark_install]$ ./java.sh
[spark@master spark_install]$ exit
</pre>

자바설치 확인
<pre>
[root@master ~]# su - spark
[spark@master ~]# java -version
[spark@master ~]# javac -version
</pre>

### 하둡설치

하둡을 설치합니다.
<pre>
[spark@master ~]# cd learn_spark
[spark@master learn_spark]$ cd spark_install
[spark@master spark_install]$ ./hadoop.sh
[spark@master spark_install]$ exit
</pre>

하둡설치 확인
<pre>
[root@master ~]# su - spark
[spark@master ~]# hadoop version
</pre>

하둡멀티노드 설정
<pre>
[spark@master ~]# cd learn_spark
[spark@master learn_spark]$ cd spark_install
[spark@master spark_install]$ ./hd_multi.sh
[spark@master spark_install]$ exit
</pre>

### 스칼라설치

스칼라를 설치합니다.
<pre>
[root@master ~]# su - spark
[spark@master ~]# cd learn_spark
[spark@master learn_spark]$ cd spark_install
[spark@master spark_install]$ ./scala.sh
[spark@master spark_install]$ exit
</pre>

스칼라설치 확인
<pre>
[root@master ~]# su - spark
[spark@master ~]# scala -version
</pre>

### 스파크설치

스파크를 설치합니다.
<pre>
[spark@master ~]# cd learn_spark
[spark@master learn_spark]$ cd spark_install
[spark@master spark_install]$ ./spark.sh
[spark@master spark_install]$ exit
</pre>

스파크설치 확인
<pre>
[root@master ~]# su - spark
[spark@master ~]$ spark-submit —version
</pre>

스파크멀티노드 설정
<pre>
[spark@master ~]# cd learn_spark
[spark@master learn_spark]$ cd spark_install
[spark@master spark_install]$ ./setup.sh
[spark@master spark_install]$ exit
</pre>

## master 서버 세팅

### 아나콘다설치

아나콘다를 설치합니다.
<pre>
[root@master ~]# su - spark
[spark@master ~]# cd learn_spark
[spark@master learn_spark]$ cd spark_install
[spark@master spark_install]$ ./anaconda.sh
</pre>

### 메이븐설치

메이븐을 설치합니다.
<pre>
[spark@master spark_install]$ ./maven.sh
[spark@master spark_install]$ exit
</pre>

### 제플린설치

제플린을 설치합니다.
<pre>
[root@master ~]# su - spark
[spark@master ~]# cd learn_spark
[spark@master learn_spark]$ cd spark_install
[spark@master spark_install]$ ./zeppelin.sh
[spark@master spark_install]$ exit
</pre>
