 #/bin/bash
NAMESPACE=$(grep NAME env2 | awk -F \" '{print $2}')

oc process -f template.yaml --param-file=env | oc delete -f -
