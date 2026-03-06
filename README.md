# BPD-TomcatCompose
containerization of the 2 apache tomcat servers to be used in the Business Processes Development course of my university
## Requirements
In order to run this project you'll need [Docker](https://www.docker.com) installed and running
## Initialization
You can clone the project and run in the project root:

```bash 
docker compose up
```
in order to get the server containers running. 

If for some reason the images can't be fetched from docker hub, you can run:

```bash
docker compose up --build
```

and the images will be built from the files in the project.

## Usage
Both services are available to be accessed from http://localhost:[port] 
(see below for ports)
### Ports

in the .yaml docker compose file you can customize the mapping of the ports of the services, by default:

- the tomcat server for BPEL processes (8.0.32) is mapped on 8080
- the tomcat server for hosting webapps (8.5.11) is mapped on 8081

### Webapps

For the tomcat server for hosting webapps a volume mapping is provided for quickly installing and uninstalling webapps, all you need to do is having the server running and copying/removing webapp files in the tomcat511/webapps directory.

## Comments
local container network is defined in the 20.0.0.0/8 address space because... 10.0.0.0/8 and 172.0.0.0/12 private ones for some reason are already being used by my machine... if you get problems on this part try changing it until it works for you

I'll be updating this project whenever changes are needed during my attendance of the course, suggestions and corrections are welcome!
