cat banner.txt
echo
echo "\e[1;3;31m Installed Tools / Version \e[0m"
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
aws2 --version
echo "---------------------------" 
echo
PS1='\u:[$(date +%H:%M:%S)]\w > '