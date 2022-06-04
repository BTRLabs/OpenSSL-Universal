.PHONY: build
.PHONY: frameworks

CWD := $(abspath $(patsubst %/,%,$(dir $(abspath $(lastword $(MAKEFILE_LIST))))))

all: build frameworks

build:
	$(CWD)/scripts/build.sh

frameworks:
	$(CWD)/scripts/create-frameworks.sh