add:
	git add Makefile
	git commit -m "chore: modified Makefile"

	git add ada-lovelace-lts/pool/main/z/zyphor-whats-new.deb
	git commit -m "chore: update zyphor-whats-new package"

pret:
	sh prettify ada-lovelace-lts/registry/registry.json

min:
	sh minify ada-lovelace-lts/registry/registry.json
