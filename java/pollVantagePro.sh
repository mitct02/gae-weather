JAVA_HOME=/usr/java/jdk1.5.0_05

PATH=$JAVA_HOME/bin:$PATH
while true 
do
  java -noverify -cp lib/spring.jar:lib/commons-logging.jar:lib/log4j.jar:classes:lib/mysql-connector-java.jar:lib/comm.jar:lib/commons-collections.jar:lib/commons-dbcp.jar:lib/commons-pool.jar:lib/jcommon.jar:lib/jfreechart.jar:lib/axis.jar:lib/jaxrpc.jar:lib/commons-discovery-0.2.jar:lib/saaj.jar:lib/wsdl4j-1.5.1.jar -Dlog4j.configuration=file:///home/tom/dev/weather/trunk/java/log4j.properties uk.me.jstott.jweatherstation.Main 
  
  sleep 30
done
