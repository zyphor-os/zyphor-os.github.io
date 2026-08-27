add:
	git add Makefile
	git commit -m "chore: modified Makefile"

	git add ada-lovelace-lts/dists/ada-lovelace/main/binary-amd64/Packages
	git commit -m "chore: update Packages index"

	git add ada-lovelace-lts/dists/ada-lovelace/main/binary-amd64/Packages.gz
	git commit -m "chore: update compressed Packages index"

	git add ada-lovelace-lts/pool/main/z/zyphor-cli.deb
	git commit -m "chore: update zyphor-cli package"

	git add ada-lovelace-lts/pool/main/z/zyphor-repo-config.deb
	git commit -m "chore: update zyphor repo config package"

	git add ada-lovelace-lts/dists/ada-lovelace/InRelease
	git commit -m "chore: add repository InRelease"

	git add ada-lovelace-lts/dists/ada-lovelace/Release
	git commit -m "chore: add repository Release metadata"

	git add ada-lovelace-lts/dists/ada-lovelace/Release.gpg
	git commit -m "chore: add repository Release signature"

	git add ada-lovelace-lts/pool/main/z/zyphor-archive-keyring.deb
	git commit -m "feat: add zyphor archive keyring package"

	git add ada-lovelace-lts/zyphor-archive-keyring.asc
	git commit -m "chore: add zyphor archive signing key"

	git add ada-lovelace-lts/zyphor-archive-keyring.gpg
	git commit -m "chore: add zyphor archive keyring"

pret:
	sh prettify v2-ada-lovelace/registry/registry.json

min:
	sh minify v2-ada-lovelace/registry/registry.json
