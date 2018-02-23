# docker-siesta
Docker file for Bryntum Siesta JavaScript UI &amp; unit testing 

## Prepare

Download the current Siesta sources from:
	
	https://customerzone.bryntum.com/

copy your Siesta sources to: 

	image/root/usr/share/htdocs/siesta

Set SIESTA_VERSION in Dockerfile

## Docker build / run

	docker build --tag=siesta:4.x.y . (4.x.y is the same as SIESTA_VERSION)
	docker run --name siesta siesta:4.x.y
