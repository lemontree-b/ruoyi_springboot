#!/bin/bash
##############################################################
# File Name:entry.sh
# Version:V1.0
# Author:oldboy lidao996
# Organization:www.oldboyedu.com
# Desc:
##############################################################
JVM_OPTS="-Dname=${JAR}  -Duser.timezone=Asia/Shanghai -Xms512m -Xmx1024m -XX:MetaspaceSize=128m -XX:MaxMetaspaceSize=512m -XX:+HeapDumpOnOutOfMemoryError -XX:+PrintGCDateStamps  -XX:+PrintGCDetails -XX:NewRatio=1 -XX:SurvivorRatio=30 -XX:+UseParallelGC -XX:+UseParallelOldGC"
java "$JVM_OPTS" -jar ${JAR}
