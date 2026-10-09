add:
	git add Makefile
	git commit -m "chore: modified Makefile"

	git add ada-lovelace-lts/dists/ada-lovelace/InRelease
	git commit -m "chore: update Ada Lovelace InRelease metadata"

	git add ada-lovelace-lts/dists/ada-lovelace/Release
	git commit -m "chore: update Ada Lovelace Release metadata"

	git add ada-lovelace-lts/dists/ada-lovelace/Release.gpg
	git commit -m "chore: update Ada Lovelace Release signature"

	git add ada-lovelace-lts/dists/ada-lovelace/main/binary-amd64/Packages
	git commit -m "chore: update Ada Lovelace AMD64 package index"

	git add ada-lovelace-lts/dists/ada-lovelace/main/binary-amd64/Packages.gz
	git commit -m "chore: update compressed Ada Lovelace AMD64 package index"

	git add ada-lovelace-lts/pool/main/z/zyphor-grub-theme.deb
	git commit -m "chore: update zyphor-grub-theme package"

	git add ada-lovelace-lts/pool/main/z/zyphor-os-release.deb
	git commit -m "chore: update zyphor-os-release package"

pret:
	sh prettify ada-lovelace-lts/registry/registry.json

min:
	sh minify ada-lovelace-lts/registry/registry.json
