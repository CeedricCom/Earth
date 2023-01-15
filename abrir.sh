#!/bin/sh

while true; do
	java -Xms13G -Xmx13G -XX:+UseG1GC -XX:+UnlockExperimentalVMOptions -XX:G1NewSizePercent=20 -XX:G1MaxNewSizePercent=60 -XX:G1ReservePercent=20 -XX:MaxGCPauseMillis=50 -XX:G1HeapRegionSize=32M --add-modules=jdk.incubator.vector -jar purpur-custompots-371.jar
	echo "Restarting in 5 seconds. Press CTRL + C to cancel."
	sleep 5s
done
