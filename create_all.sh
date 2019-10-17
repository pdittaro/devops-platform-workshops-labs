#!/bin/bash

oc process grafana-template \
    -p GRAFANA_SERVICE_NAME=grafana \
    -p LOKI_SERVICE_NAME=loki \
    -p PROMETHEUS_SERVICE_NAME=prometheus \
    -p ROUTE_SUBDOMAIN=pathfinder.gov.bc.ca \
    -p NAMESPACE=4zq6uj-pdittaro-ocp201-tst-dev \
    | oc apply -f -

oc process prometheus-template
    -p PROMETHEUS_SERVICE_NAME=prometheus
    -p ROUTE_HOST=prometheus
    -p ROUTE_SUBDOMAIN=pathfinder.gov.bc.ca
    -p NAMESPACE=4zq6uj-pdittaro-ocp201-tst-dev
    | oc apply -f -

oc process loki-template
    -p LOKI_SERVICE_NAME=loki
    | oc apply -f -
