all: build

build:
	@docker build --tag=nasqueron/openfire:$(shell cat VERSION) .

release: build
	@docker build --tag=nasqueron/openfire:$(shell cat VERSION) .
