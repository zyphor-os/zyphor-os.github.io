add:
	git add Makefile
	git commit -m "chore: modified Makefile"

	git add ada-lovelace-lts/dists/ada-lovelace/InRelease
	git commit -m "chore: update Ada Lovelace InRelease"

	git add ada-lovelace-lts/dists/ada-lovelace/Release
	git commit -m "chore: update Ada Lovelace Release"

	git add ada-lovelace-lts/dists/ada-lovelace/Release.gpg
	git commit -m "chore: update Ada Lovelace Release signature"

	git add ada-lovelace-lts/dists/ada-lovelace/main/binary-amd64/Packages
	git commit -m "chore: update Ada Lovelace package index"

	git add ada-lovelace-lts/dists/ada-lovelace/main/binary-amd64/Packages.gz
	git commit -m "chore: update compressed Ada Lovelace package index"

	git add ada-lovelace-lts/pool/main/z/zyphor-os-release.deb
	git commit -m "chore: update Ada Lovelace OS release package"

	git add bethany-lts/bethany/dists/bethany/InRelease
	git commit -m "chore: update Bethany InRelease"

	git add bethany-lts/bethany/dists/bethany/Release
	git commit -m "chore: update Bethany Release"

	git add bethany-lts/bethany/dists/bethany/Release.gpg
	git commit -m "chore: update Bethany Release signature"

	git add bethany-lts/bethany/dists/bethany/main/binary-amd64/Packages
	git commit -m "chore: update Bethany package index"

	git add bethany-lts/bethany/dists/bethany/main/binary-amd64/Packages.gz
	git commit -m "chore: update compressed Bethany package index"

	git add bethany-lts/bethany/pool/main/z/zyphor-os-release.deb
	git commit -m "chore: update Bethany OS release package"
pret:
	sh prettify ada-lovelace-lts/registry/registry.json

min:
	sh minify ada-lovelace-lts/registry/registry.json
