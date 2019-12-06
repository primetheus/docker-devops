# Docker Image for DevOps Build Operations
If you need a host to run some builds, manage remote environment, or provision other servers from.
## Base Image: Ubuntu 18.04

### List of installed tools
- ansible
- aws-cli
- azure-cli
- git 
- go 
- maven 
- node 
- npm 
- openjdk 
- packer
- pip 
- python
- python
- ruby 
- terraform 

### Build the Image
```
> docker build -t devops-box:latest .
```
### Run the Container
```
> docker run -it devops-box /bin/bash
```
