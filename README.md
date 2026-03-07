# BPD-TomcatCompose

Containerization of the 2 apache tomcat servers to be used in the Business Processes Development course of my university

## Requirements

In order to run this project you'll need [Docker](https://www.docker.com) installed and running

## Initialization

You can clone the project and run in the project root:

```bash
docker compose up
```

in order to get the server containers up and running.

>The tomcat server for BPEL processes already has apache ODE installed.

If for some reason the images can't be fetched from docker hub, you can run:

```bash
docker compose up --build
```

and the images will be built from the files in the project.

> Warning! whenever you need to rebuild the servers from scratch again (both without and with --build option) **delete the mounted folders created when the containers start up** so that the servers get recreated correctly.
For clarity's sake, I'm talking about the ```apache-tomcat-8.x.xx``` folders

## Usage

Both services are available to be accessed from http://localhost:[port]
(see below for ports)

### Ports

in the .yaml docker compose file you can customize the mapping of the ports of the services, by default:

- the tomcat server for BPEL processes (8.0.32) is mapped on 8081
- the tomcat server for hosting webapps (8.5.11) is mapped on 8082

### Volume mapping

As the IDE provided by the professor needs the installation directory of both servers, a volume mapping is provided, you can access their installation path in their respective named directories in both *tomcat32* and *tomcat511* directories.
Naturally the latter can also be used for quickly installing and uninstalling webapps, all you'd need to do is having the server running and copying/removing webapp files in the ```tomcat511/apache-tomcat-8.5.11/webapps``` directory.

## Comments

local container network is defined in the 20.0.0.0/8 address space because... 10.0.0.0/8 and 172.0.0.0/12 private ones for some reason are already being used by my machine... if you get problems on this part try changing it until it works for you

I'll be updating this project whenever changes are needed during my attendance of the course, suggestions and corrections are welcome!
