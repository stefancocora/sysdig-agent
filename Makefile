# Metadata for driving the build lives here.
META_DIR := .make
VERSION='v0.99.2214dev'

.PHONY: help build interactive-upstream

# define a catchall target
# default: build
default: help

help:
	@echo "---> Help menu:"
	@echo "supported make targets:"
	@echo ""
	@echo "---"
	@echo ""
	@echo "Help output:"
	@echo "  make help"
	@echo ""
	@echo "Build the image"
	@echo "  make build"
	@echo ""
	@echo "Launching the upstream sysdig dev image interactive"
	@echo "  make interactive-upstream"
	@echo ""


build:
	@echo "--> Building image..."
	docker build -t quay.io/ukhomeofficedigital/sysdig-agent:$(VERSION) .

# run
#
# apt-cache show sysdig | grep Version | awk '{print $2}'
#
# to find the version of sysdig packaged in the docker image
interactive-upstream:
	@echo "--> Launching toolbox image in interactive mode..."
	docker run --rm -ti --entrypoint=/bin/bash sysdig/sysdig:dev
