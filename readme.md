## Oracle Java with Apache Tomcat Docker Image

* Docker images are based on Ubuntu 16.04 LTS
* Tomcat is installed at: `/opt/tomcat`
* Java is installed at: `/opt/java`
* Image by default opens up on port 8080
* Tomcat Credentials:
    * **User**: ` admin `
    * **Password**: ` TomcatD3vOps `

* Docker Page: **[tmckenna/oraclejava-tomcat](https://hub.docker.com/r/tmckenna/oraclejava-tomcat/)**

#### Tags
* `tom7-jre6` : Tomcat 7 on Oracle Java 6
* `tom8.5-jre7` : Tomcat 8.5 on Oracle Java 7
* `tom8.5-jre8` : Tomcat 8.5 on Oracle Java 8
* `tom8.5-jre9` : Tomcat 8.5 on Oracle Java 9
* `tom9-jre9` : Tomcat 9 on Oracle Java 9
* `latest` : Tomcat 9 on Oracle Java 9

## Pull latest image:
    docker pull tmckenna/oraclejava-tomcat:latest
## Builds
* Assuming java/tomcat install packages are in the `src/install/` directory
### Linux/MacOS Bash:
    ./build.sh IMAGE_NAME
### Windows Powershell:
    .\build.ps1 IMAGE_NAME
