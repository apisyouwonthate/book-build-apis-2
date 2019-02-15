default: build-html

build-html:
	asciidoctor book.adoc -D generated -b html5
