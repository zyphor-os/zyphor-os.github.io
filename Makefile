add:
	git add Makefile
	git commit -m "chore: modified Makefile"

	git add ada-lovelace-lts/dists/ada-lovelace/InRelease
	git commit -m "chore: update ada lovelace InRelease"

	git add ada-lovelace-lts/dists/ada-lovelace/Release
	git commit -m "chore: update ada lovelace Release"

	git add ada-lovelace-lts/dists/ada-lovelace/Release.gpg
	git commit -m "chore: update ada lovelace Release signature"

	git add ada-lovelace-lts/dists/ada-lovelace/main/binary-amd64/Packages
	git commit -m "chore: update ada lovelace Packages"

	git add ada-lovelace-lts/dists/ada-lovelace/main/binary-amd64/Packages.gz
	git commit -m "chore: update ada lovelace Packages.gz"

	git add ada-lovelace-lts/pool/main/z/zyphor-cli.deb
	git commit -m "chore: update zyphor CLI package"

pret:
	sh prettify ada-lovelace-lts/registry/registry.json

min:
	sh minify ada-lovelace-lts/registry/registry.json
