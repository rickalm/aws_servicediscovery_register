#! /bin/sh

INSTANCE_ID=$(curl -s http://169.254.169.254/latest/meta-data/instance-id)
INSTANCE_IP=$(curl -s http://169.254.169.254/latest/meta-data/local-ipv4)

register() {
  aws servicediscovery register-instance --service-id ${SERVICE_ID} --instance-id ${INSTANCE_ID} --attributes AWS_INSTANCE_IPV4=${INSTANCE_IP}
}

deregister() {
  aws servicediscovery register-instance --service-id ${SERVICE_ID} --instance-id ${INSTANCE_ID} --attributes AWS_INSTANCE_IPV4=${INSTANCE_IP}
}

register
sleep 600
deregister
