#! /bin/bash 
cat /banner.txt
echo
echo -e "\e[1;3;31m Tool / Version \e[0m"
echo "---------------------------" 
python -V
pip --version
git --version
ansible --version | head -1
az --version | head -1 | grep -v updates | sed 's/\s\+/ /g'
terraform --version | head -1
echo -n  "packer "; packer --version
go version
ruby --version
echo -n "node "; node --version
echo -n "npm "; npm --version
java -version | head -1
mvn --version | head -1
aws2 --version
echo "---------------------------" 
echo
