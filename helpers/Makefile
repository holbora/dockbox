.PHONY: create run stop

VERSION ?= latest
IMAGE := ghcr.io/holbora/dockbox:$(VERSION)
AGENT := claude
WORKDIR := $(notdir $(CURDIR))

create:
	docker sandbox create --template $(IMAGE) $(AGENT) .

run:
	docker sandbox run $(AGENT)-$(WORKDIR) -- $(ARGS)

stop:
	docker sandbox stop $(AGENT)-$(WORKDIR)
