default: build

install:
	brew bundle
	bundle install

build: build-html build-pdf build-epub

build-html:
	rm -rf generated/html/*
	asciidoctor book.adoc -r asciidoctor-diagram -b html5 -D generated/html
	mkdir -p generated/html/1-theory && cp -r 1-theory/images generated/html/1-theory/
	mkdir -p generated/html/2-planning && cp -r 2-planning/images generated/html/2-planning/

build-pdf:
	asciidoctor-pdf book.adoc -r asciidoctor-diagram -D generated

build-epub:
	export XML_CATALOG_FILES=/usr/local/etc/xml/catalog
	a2x book.adoc -r asciidoctor-diagram -v -fepub -dbook --no-xmllint
	mkdir generated/epub && mv book.epub generated/epub/