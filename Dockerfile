FROM ubuntu:18.04

COPY ./banner.txt /banner.txt
COPY ./profile /.bash_profile
RUN chmod 775 /.bash_profile

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
    rm -f /terraform*.zip /aws*.zip

ENTRYPOINT "/.bash_profile" && /bin/bash