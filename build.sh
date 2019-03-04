docker build -t bastion .
docker tag bastion 192.168.0.30:20000/bastion
docker push 192.168.0.30:20000/bastion
