oc new-build https://github.com/pdittaro/devops-platform-workshops-labs#pdittaro-201 --context-dir=openshift/.pipeline

https://console.pathfinder.gov.bc.ca:8443/apis/build.openshift.io/v1/namespaces/4zq6uj-pdittaro-ocp201-tst-tools/buildconfigs/devops-platform-workshops-labs/webhooks/EPiH9i6TRxa5fYQb7CcQ/github

oc new-build https://github.com/pdittaro/devops-platform-workshops-labs.git#pdittaro-201 --context-dir=blackbox_exporter/.pipeline --name blackbox

# oc delete all,configmaps,templates,pvc,secrets --all