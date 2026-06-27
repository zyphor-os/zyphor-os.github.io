add:
	git add dists/stable/main/binary-amd64/Packages
	git commit -m "chore: updated Packages index"

	git add dists/stable/main/binary-amd64/Packages.gz
	git commit -m "chore: updated compressed Packages index"

	git add pool/main/z/fastfetch-config-1.deb
	git commit -m "chore: updated fastfetch-config-1 package"

	git add Makefile
	git commit -m "chore: modified Makefile"

pret:
	sh prettify registry/registry.json

min:
	sh minify registry/registry.json