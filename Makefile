version=4.7.4

all: build

build:
	@docker build --tag=openfire --build-arg OPENFIRE_VERSION=$(version)  .

release: build
	@docker build --tag=openfire:$(version) --build-arg OPENFIRE_VERSION=$(version) .
	@echo $(version) > VERSION

run: release
	@OPENFIRE_VERSION=$(version) docker compose run --rm openfire

help:
	@echo "Targets:            build, release, run"
	@echo "Optional parameter: version=x.y.z"
	@echo "Example:            make release version=4.7.4"
	@echo "For Openfire version information see https://github.com/igniterealtime/Openfire/releases"
