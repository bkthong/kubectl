FROM registry.access.redhat.com/ubi8/ubi-minimal:latest


# This overwrites any existing configuration in /etc/yum.repos.d/kubernetes.repo
ADD kubernetes.repo /etc/yum.repos.d/

RUN microdnf install -y kubectl && microdnf clean all

# To allow the pod to run continously upon creation
# and when needed exec in and start a shell
CMD [ "sleep" , "infinity" ]

