add:
	git add Makefile
	git commit -m "chore: modified Makefile"

	git add ada-lovelace-lts/dists/ada-lovelace/InRelease
	git commit -m "repo: update InRelease"

	git add ada-lovelace-lts/dists/ada-lovelace/Release
	git commit -m "repo: update Release"

	git add ada-lovelace-lts/dists/ada-lovelace/Release.gpg
	git commit -m "repo: update Release signature"

	git add ada-lovelace-lts/dists/ada-lovelace/main/binary-amd64/Packages
	git commit -m "repo: update Packages index"

	git add ada-lovelace-lts/dists/ada-lovelace/main/binary-amd64/Packages.gz
	git commit -m "repo: update compressed Packages index"

	git add ada-lovelace-lts/pool/main/z/zyphor-cli.deb
	git commit -m "repo: update zyphor-cli package"

pret:
	sh prettify ada-lovelace-lts/registry/registry.json

min:
	sh minify ada-lovelace-lts/registry/registry.json
