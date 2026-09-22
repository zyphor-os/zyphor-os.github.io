add:
	git add Makefile
	git commit -m "chore: modified Makefile"

	git add bethany-lts/bethany/dists/bethany/InRelease
	git commit -m "chore: update bethany InRelease"

	git add bethany-lts/bethany/dists/bethany/Release
	git commit -m "chore: update bethany Release"

	git add bethany-lts/bethany/dists/bethany/Release.gpg
	git commit -m "chore: update bethany Release signature"

	git add bethany-lts/bethany/dists/bethany/main/binary-amd64/Packages
	git commit -m "chore: update bethany Packages"

	git add bethany-lts/bethany/dists/bethany/main/binary-amd64/Packages.gz
	git commit -m "chore: update bethany Packages.gz"

	git add bethany-lts/bethany/pool/main/z/zyphor-plymouth.deb
	git commit -m "chore: update zyphor Plymouth package"

pret:
	sh prettify ada-lovelace-lts/registry/registry.json

min:
	sh minify ada-lovelace-lts/registry/registry.json
