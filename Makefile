default: build

install:
	brew bundle
	bundle install

build: build-html build-pdf build-epub build-mobi

build-html:
	rm -rf generated/html/*
	asciidoctor -r asciidoctor-diagram -b html5 -D generated/html src/book.adoc
	mkdir -p generated/html/1-theory && cp -r src/1-theory/images generated/html/1-theory/
	mkdir -p generated/html/2-planning && cp -r src/2-planning/images generated/html/2-planning/

build-pdf:
	asciidoctor-pdf -r asciidoctor-diagram -D generated src/book.adoc

build-epub:
	#export XML_CATALOG_FILES=/usr/local/etc/xml/catalog
	#a2x src/book.adoc -r asciidoctor-diagram -v -fepub -dbook --no-xmllint
	#mkdir generated/epub && mv book.epub generated/epub/
	asciidoctor-epub3 -D generated src/book.adoc

build-mobi:
	asciidoctor-epub3 -D generated -a ebook-format=kf8 src/book.adoc