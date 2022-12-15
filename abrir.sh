#!/bin/sh

java -Xms13G -Xmx13G -XX:+UseG1GC -XX:+UnlockExperimentalVMOptions -XX:G1NewSizePercent=20 -XX:G1MaxNewSizePercent=60 -XX:G1ReservePercent=20 -XX:MaxGCPauseMillis=50 -XX:G1HeapRegionSize=32M -jar paper-custompots-1-19-3.jar
