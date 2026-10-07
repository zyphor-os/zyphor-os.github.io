add:
	git add Makefile
	git commit -m "chore: modified Makefile"

	git add ada-lovelace-lts-reforged/ada-lovelace/dists/ada-lovelace/InRelease
	git commit -m "chore: update Ada Lovelace Reforged InRelease"

	git add ada-lovelace-lts-reforged/ada-lovelace/dists/ada-lovelace/Release
	git commit -m "chore: update Ada Lovelace Reforged Release"

	git add ada-lovelace-lts-reforged/ada-lovelace/dists/ada-lovelace/Release.gpg
	git commit -m "chore: update Ada Lovelace Reforged Release signature"

	git add ada-lovelace-lts-reforged/ada-lovelace/dists/ada-lovelace/main/binary-amd64/Packages
	git commit -m "chore: update Ada Lovelace Reforged package index"

	git add ada-lovelace-lts-reforged/ada-lovelace/dists/ada-lovelace/main/binary-amd64/Packages.gz
	git commit -m "chore: update compressed Ada Lovelace Reforged package index"

	git add ada-lovelace-lts-reforged/ada-lovelace/pool/main/z/zyphor-bashrc-config.deb
	git commit -m "chore: add zyphor bashrc config package"

	git add ada-lovelace-lts-reforged/ada-lovelace/pool/main/z/zyphor-face-icon.deb
	git commit -m "chore: add zyphor face icon package"

	git add ada-lovelace-lts-reforged/ada-lovelace/pool/main/z/zyphor-fastfetch-config.deb
	git commit -m "chore: add zyphor fastfetch config package"

pret:
	sh prettify ada-lovelace-lts/registry/registry.json

min:
	sh minify ada-lovelace-lts/registry/registry.json
