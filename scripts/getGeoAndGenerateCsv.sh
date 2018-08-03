#!/bin/bash
file="addresses"
touch /home/shaddar/geoip/geoip.csv
lines=`cat $file`
	for line in $lines; do
		if [ -s /home/shaddar/geoip/geoip.csv ]
		then
		curl "http://api.ipstack.com/""$line""?access_key=06817b9ae23ab53891d674fc29bca733&format=1" >> /home/shaddar/geoip/geoip.csv
		else
		curl "http://api.ipstack.com/""$line""?access_key=06817b9ae23ab53891d674fc29bca733&format=1" > /home/shaddar/geoip/geoip.csv
		fi
done
