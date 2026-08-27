add:
	git add Makefile
	git commit -m "chore: modified Makefile"

	git add ada-lovelace-lts/dists/ada-lovelace/InRelease
	git commit -m "chore: update repository InRelease"

	git add ada-lovelace-lts/dists/ada-lovelace/Release
	git commit -m "chore: update repository Release metadata"

	git add ada-lovelace-lts/dists/ada-lovelace/Release.gpg
	git commit -m "chore: update repository Release signature"

	git add ada-lovelace-lts/dists/ada-lovelace/main/binary-amd64/Packages
	git commit -m "chore: update Packages index"

	git add ada-lovelace-lts/dists/ada-lovelace/main/binary-amd64/Packages.gz
	git commit -m "chore: update compressed Packages index"

	git add ada-lovelace-lts/pool/main/z/zyphor-archive-keyring.deb
	git commit -m "chore: update zyphor archive keyring package"

pret:
	sh prettify v2-ada-lovelace/registry/registry.json

min:
	sh minify v2-ada-lovelace/registry/registry.json
