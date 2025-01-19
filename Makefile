default: build

install:
	brew bundle
	bundle install

build: build-pdf build-epub

build-pdf:
	bundle exec asciidoctor-pdf -r asciidoctor-diagram -a data-uri -D generated src/book.adoc

build-epub:
	bundle exec asciidoctor-epub3 -r asciidoctor-diagram -D generated src/book.adoc
