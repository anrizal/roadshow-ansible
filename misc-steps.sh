# subs
subscription-manager register
subscription-manager attach --pool=8a85f9814999f69101499bf4247825f4
subscription-manager repos --disable="*"
subscription-manager repos \
--enable="rhel-7-server-ose-3.0-rpms"

# reqs
yum -y install deltarpm wget vim-enhanced net-tools bind-utils tmux git httpd-tools docker lvm2
yum -y install openshift openshift-master openshift-node openshift-sdn-ovs \
tuned-profiles-openshift-node

# docker setup

# docker pull
docker pull registry.access.redhat.com/openshift3/ose-haproxy-router:v3.0.0.1
docker pull registry.access.redhat.com/openshift3/ose-deployer:v3.0.0.1
docker pull registry.access.redhat.com/openshift3/ose-sti-builder:v3.0.0.1
docker pull registry.access.redhat.com/openshift3/ose-sti-image-builder:v3.0.0.1
docker pull registry.access.redhat.com/openshift3/ose-docker-builder:v3.0.0.1
docker pull registry.access.redhat.com/openshift3/ose-pod:v3.0.0.1
docker pull registry.access.redhat.com/openshift3/ose-docker-registry:v3.0.0.1
docker pull registry.access.redhat.com/openshift3/ose-keepalived-ipfailover:v3.0.0.1
docker pull registry.access.redhat.com/openshift3/ruby-20-rhel7
docker pull registry.access.redhat.com/openshift3/mysql-55-rhel7
docker pull registry.access.redhat.com/openshift3/php-55-rhel7
docker pull registry.access.redhat.com/jboss-eap-6/eap-openshift
docker pull openshift/hello-openshift
