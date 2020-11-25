.PHONY=up

SKAFFOLD?=skaffold
HELM?=helm

.EXPORT_ALL_VARIABLES:

setup:
	$(HELM) repo add prometheus-community https://prometheus-community.github.io/helm-charts
	$(HELM) repo update

# prometheus: setup
# 	$(HELM)
#
# prometheus-adapter: prometheus
# 	$(HELM)
up:
	$(SKAFFOLD) run
