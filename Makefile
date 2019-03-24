default: build

install:
	brew bundle
	bundle install

build: build-html build-pdf build-epub

build-html:
	rm -rf generated/html/*
	asciidoctor book.adoc -b html5 -D generated/html
	mkdir -p generated/html/1-theory && cp -r 1-theory/images generated/html/1-theory/
	mkdir -p generated/html/2-planning && cp -r 2-planning/images generated/html/2-planning/

build-pdf:
	asciidoctor-pdf book.adoc -D generated

build-epub:
	export XML_CATALOG_FILES=/usr/local/etc/xml/catalog
	a2x -v -fepub -dbook --no-xmllint book.adoc && mkdir -p generated/html
	mkdir generated/epub && mv book.epub generated/epub/