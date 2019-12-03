#!/bin/bash -x

for file in `find /var/log/*.log -mtime +7`
do
	cp $file backup/
done
