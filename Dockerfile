FROM ubuntu:18.04

COPY ./banner.txt /banner.txt
COPY ./welcome.sh /etc/profile.d/
RUN echo "PS1='\u:[$(date +%H:%M:%S)]\w > '" >> /etc/profile
RUN mkdir /.ssh && mkdir /.azure && touch /.azure/credentials

RUN apt -y update && \
    apt -y install vim && \
    apt -y install ansible && \
    apt -y install packer && \
    apt -y install unzip && \
    apt -y install git && \
    apt -y install golang && \
    apt -y install ruby && \
    apt -y install npm && \
    apt-get -y install openjdk-8-jdk && \
    apt -y install maven && \
    wget https://releases.hashicorp.com/terraform/0.12.17/terraform_0.12.17_linux_amd64.zip && \
    unzip terraform_0.12.17_linux_amd64.zip && \ 
    mv terraform /usr/local/bin/ && \
    apt install -y curl && \
    curl -sL https://aka.ms/InstallAzureCLIDeb | bash && \
    apt -y install python-pip && \
    pip install packaging && \
    pip install msrestazure && \
    pip install ansible[azure] && \
    curl "https://d1vvhvl2y92vvt.cloudfront.net/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" && \
    unzip awscliv2.zip && \
    ./aws/install && \
    rm -rf /terraform*.zip /aws*.zip /aws

ENTRYPOINT "/etc/profile.d/welcome.sh" && /bin/bash