add:
	git add dists/stable/main/binary-amd64/Packages
	git commit -m "chore: Update Packages"

	git add dists/stable/main/binary-amd64/Packages.gz
	git commit -m "chore: Update Packages.gz"

	git add pool/main/z/grub-screensaver-1.deb
	git commit -m "chore: Update grub-screensaver-1.deb"

	git add Makefile
	git commit -m "chore: modified Makefile"

pret:
	sh prettify registry/registry.json

min:
	sh minify registry/registry.json