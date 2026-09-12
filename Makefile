add:
# 	add makefile
	git add Makefile
	git commit -m "chore: modified Makefile"

	git add babbage-lts/dists/babbage/InRelease
	git commit -m "chore: update repository InRelease"

	git add babbage-lts/dists/babbage/Release
	git commit -m "chore: update repository Release metadata"

	git add babbage-lts/dists/babbage/Release.gpg
	git commit -m "chore: update repository Release signature"

	git add babbage-lts/dists/babbage/main/binary-amd64/Packages
	git commit -m "chore: update Packages index"

	git add babbage-lts/dists/babbage/main/binary-amd64/Packages.gz
	git commit -m "chore: update compressed Packages index"

	git add babbage-lts/pool/main/z/zyphor-repo-config.deb
	git commit -m "chore: update zyphor repo config package"

pret:
	sh prettify ada-lovelace-lts/registry/registry.json

min:
	sh minify ada-lovelace-lts/registry/registry.json
