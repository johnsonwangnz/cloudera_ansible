# {{ ansible_managed }}

export HADOOP_HEAPSIZE={{ heapsize }}

export HADOOP_OPTS="-XX:+UseConcMarkSweepGC -XX:+AggressiveOpts -XX:+CMSClassUnloadingEnabled -XX:SurvivorRatio=8 -XX:+ExplicitGCInvokesConcurrent -verbose:gc -XX:+PrintGCDetails -XX:+PrintGCTimeStamps -Xloggc:/var/log/hadoop-hdfs/hadoop-hdfs-gc.log"


