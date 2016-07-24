#
# Makefile
# vagrant, 2016-07-24 12:42
#

VERSION=0.32.0
NAME=mhristof/silver_searcher

default: build

tag:
	docker tag $(NAME) $(NAME):$(VERSION)
	docker tag $(NAME) $(NAME):latest
	git tag $(VERSION)

build:
	docker build --build-arg version=$(VERSION) -t $(NAME):$(VERSION) .

all:
	@echo "Makefile needs your attention"


# vim:ft=make
#
