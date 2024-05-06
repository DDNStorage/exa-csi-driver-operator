# Build the manager binary
#FROM quay.io/operator-framework/helm-operator:v1.32.0
# FROM registry.redhat.io/openshift4/ose-helm-operator@sha256:24fbff5e01693bc30dd88d038ed026ac0bcf041527084493be17749d79cd3452
FROM registry.redhat.io/openshift4/ose-helm-operator:v4.15.0-202404151834.p0.g2e995a9.assembly.stream.el8

ENV HOME=/opt/helm
COPY watches.yaml ${HOME}/watches.yaml
COPY helm-charts  ${HOME}/helm-charts
COPY licenses /licenses
WORKDIR ${HOME}
