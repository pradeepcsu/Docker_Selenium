# Docker_Selenium
Template for Selenium tests to be executed on Docker containers

Steps to Follow:

* Install docker for windows/mac
* pull selenium hub image by using command prompt - ```docker pull selenium/hub```
* or use kitematic (seperate download) gui to pull required images
* pull selenium node-chrome-debug ```docker pull selenium/node-chrome-debug```
* pull selenium node-firefox-debug ```docker pull selenium/node-firefox-debug```
* use following command to check all the pulled images ```docker images``` 
* to see already running images ```docker ps -a```
* to remove specific container ``` docker rm containerid```
* start running selenium hub and nodes
* ```docker run -d -p 4545:4444 --name selenium-hub selenium/hub```
* ```docker run -d -P --link  selenium-hub:hub selenium/node-chrome-debug```
* ```docker run -d -P --link  selenium-hub:hub selenium/node-firefox-debug```
* double check by checking localhost:4545 to see selenium hub running
* download vnc viewer to view the tests being executed
* 






