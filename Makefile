add:
# 
	git add Makefile
	git commit -m "chore: modified Makefile"

	git add babbage-lts/dists/babbage/InRelease
	git commit -m "chore: update babbage InRelease"

	git add babbage-lts/dists/babbage/Release
	git commit -m "chore: update babbage Release metadata"

	git add babbage-lts/dists/babbage/Release.gpg
	git commit -m "chore: update babbage Release signature"

	git add babbage-lts/dists/babbage/main/binary-amd64/Packages
	git commit -m "chore: update babbage Packages index"

	git add babbage-lts/dists/babbage/main/binary-amd64/Packages.gz
	git commit -m "chore: update babbage compressed Packages index"

	git add babbage-lts/pool/main/z/zyphor-desktop-environment-theme.deb
	git commit -m "chore: add zyphor desktop environment theme package"

pret:
	sh prettify ada-lovelace-lts/registry/registry.json

min:
	sh minify ada-lovelace-lts/registry/registry.json
