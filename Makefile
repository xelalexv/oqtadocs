.DEFAULT_GOAL := help
SHELL = /bin/bash

ROOT = $(shell pwd)
IMAGE = oqtadocs

.PHONY: image
image:
	docker build -t $(IMAGE) .


.PHONY: build
build:
	docker run --rm --volume="$(ROOT):/srv/jekyll" -it $(IMAGE) jekyll build


.PHONY: serve
serve:
	docker run --name oqtadocs --rm --volume="$(ROOT):/srv/jekyll" -p 3000:4000 \
		-it $(IMAGE) jekyll serve --watch --drafts


.PHONY: publish
publish: notdirty build
	rm -rf _site/Dockerfile _site/Makefile _site/*.sublime*
	git branch -D gh-pages || true
	git push origin :gh-pages || true
	git checkout -b gh-pages
	git add --force _site
	git commit -m "pub"
	git push origin gh-pages
	git checkout master


.PHONY: notdirty
notdirty:
ifneq ($(shell git diff --stat),)
	$(error "dirty, commit first!" )
	exit 1
endif
