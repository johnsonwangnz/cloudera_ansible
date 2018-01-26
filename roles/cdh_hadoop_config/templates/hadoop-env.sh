# {{ ansible_managed }}

export HADOOP_HEAPSIZE={{ heapsize }}

export HADOOP_OPTS="-XX:+UseConcMarkSweepGC -XX:+AggressiveOpts -XX:+CMSClassUnloadingEnabled -XX:SurvivorRatio=8 -XX:+ExplicitGCInvokesConcurrent -verbose:gc -XX:+PrintGCDetails -XX:+PrintGCTimeStamps -Xloggc:/var/log/hadoop-hdfs/hadoop-hdfs-gc.log"

export HADOOP_NAMENODE_OPTS="-javaagent:/usr/lib/jmx-exporter/jmx_prometheus_javaagent-{{jmx_prometheus_javaagent_version}}.jar={{jmx_prometheus_exporter_port}}:/usr/lib/jmx-exporter/jmx_prometheus_hadoop_config.yml"

export HADOOP_DATANODE_OPTS="-javaagent:/usr/lib/jmx-exporter/jmx_prometheus_javaagent-{{jmx_prometheus_javaagent_version}}.jar={{jmx_prometheus_exporter_port}}:/usr/lib/jmx-exporter/jmx_prometheus_hadoop_config.yml"
