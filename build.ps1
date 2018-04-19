Set-Location src/
$imageName=$args[0]

# Check if Image Name is empty. Default to oraclejava-tomcat if empty
if (!($imageName)){ $imageName="oraclejava-tomcat" }

# Build Ubuntu Base Docker Image using Ubuntu 16.04 LTS & push up to DockerHub
#docker build -t tmckenna/ubuntu-base:16.04 -f ubuntu-base.dock .
#docker push tmckenna/ubuntu-base:16.04

# Build Oracle Java Tomcat Docker Images
docker build -t ${imageName}:tom7-jre6 -f tom7-jre6.dock .
docker build -t ${imageName}:tom8.5-jre7 -f tom8.5-jre7.dock .
docker build -t ${imageName}:tom8.5-jre8 -f tom8.5-jre8.dock .
docker build -t ${imageName}:tom8.5-jre9 -f tom8.5-jre9.dock .
docker build -t ${imageName}:tom9-jre9 -f tom9-jre9.dock .
docker build -t ${imageName}:latest -f tom9-jre9.dock .

# Return to original directory
Set-Location $PSScriptRoot