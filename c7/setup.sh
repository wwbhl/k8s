yum install -y yum-utils device-mapper-persistent-data lvm2
yum-config-manager --add-repo http://mirrors.aliyun.com/docker-ce/linux/centos/docker-ce.repo
yum makecache fast
yum install kernel-devel -y
yum -y install docker-ce
systemctl enable docker
service docker start
usermod -aG docker vagrant
newgrp docker
