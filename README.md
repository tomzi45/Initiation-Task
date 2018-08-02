1.Go root of the project file.
docker build . -t run:1.2 -f webserveripGeo 

2.Run container
docker run -it <id> /bin/bash

3.In case nginx server didn't start type nginx in the terminal.

4.To download csv file 172.17.0.2:8081/geoip.csv
