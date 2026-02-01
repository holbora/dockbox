.PHONY: create shell rm

IMAGE := ghcr.io/holbora/dockbox:latest
SANDBOX := claude

create:
	docker sandbox create --template $(IMAGE) $(SANDBOX) .

shell:
	docker sandbox shell $(SANDBOX)

rm:
	docker sandbox rm $(SANDBOX)
