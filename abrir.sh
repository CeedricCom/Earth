#!/bin/sh

# Aikar's Flags
# Sources:
#	https://www.paper-chan.moe/paper-optimization/#JVM-Flags
#	https://docs.papermc.io/paper/aikars-flags
#	https://flags.sh/

while [ true ]; do

    java -Xms13312M -Xmx13312M --add-modules=jdk.incubator.vector -XX:+UseG1GC -XX:+ParallelRefProcEnabled -XX:MaxGCPauseMillis=200 -XX:+UnlockExperimentalVMOptions -XX:+DisableExplicitGC -XX:+AlwaysPreTouch -XX:G1HeapWastePercent=5 -XX:G1MixedGCCountTarget=4 -XX:InitiatingHeapOccupancyPercent=15 -XX:G1MixedGCLiveThresholdPercent=90 -XX:G1RSetUpdatingPauseTimePercent=5 -XX:SurvivorRatio=32 -XX:+PerfDisableSharedMem -XX:MaxTenuringThreshold=1 -Dusing.aikars.flags=https://mcflags.emc.gs -Daikars.new.flags=true -XX:G1NewSizePercent=40 -XX:G1MaxNewSizePercent=50 -XX:G1HeapRegionSize=16M -XX:G1ReservePercent=15 -jar purpur-custompots-371.jar --nogui

	echo "Restarting in 5 seconds. Press CTRL + C to cancel."
	sleep 5s

done
