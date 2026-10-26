add:
	git add Makefile
	git commit -m "chore: modified Makefile"

	# Update Ada Lovelace LTS InRelease metadata
	git add ada-lovelace-lts/dists/ada-lovelace/InRelease
	git commit -m "repo(ada-lovelace): update InRelease metadata"

	# Update Ada Lovelace LTS Release metadata
	git add ada-lovelace-lts/dists/ada-lovelace/Release
	git commit -m "repo(ada-lovelace): update Release metadata"

	# Update Ada Lovelace LTS Release signature
	git add ada-lovelace-lts/dists/ada-lovelace/Release.gpg
	git commit -m "repo(ada-lovelace): update Release signature"

	# Update AMD64 package index
	git add ada-lovelace-lts/dists/ada-lovelace/main/binary-amd64/Packages
	git commit -m "repo(ada-lovelace): update AMD64 package index"

	# Update compressed AMD64 package index
	git add ada-lovelace-lts/dists/ada-lovelace/main/binary-amd64/Packages.gz
	git commit -m "repo(ada-lovelace): update compressed AMD64 package index"

	# Remove obsolete Zyphor CLI package
	git add -u ada-lovelace-lts/pool/main/z/zyphor-cli.deb
	git commit -m "pkg(ada-lovelace): remove obsolete zyphor-cli package"

	# Update Zyphor GRUB theme package
	git add ada-lovelace-lts/pool/main/z/zyphor-grub-theme.deb
	git commit -m "pkg(ada-lovelace): update zyphor-grub-theme package"

	# Update Zyphor OS release package
	git add ada-lovelace-lts/pool/main/z/zyphor-os-release.deb
	git commit -m "pkg(ada-lovelace): update zyphor-os-release package"

	# Update Zyphor What's New package
	git add ada-lovelace-lts/pool/main/z/zyphor-whats-new.deb
	git commit -m "pkg(ada-lovelace): update zyphor-whats-new package"

pret:
	sh prettify ada-lovelace-lts/registry/registry.json

min:
	sh minify ada-lovelace-lts/registry/registry.json

update:
	@echo "\n--- FETCHING ORIGIN REPOSITORY ---\n";
	git fetch origin
	@echo "\n--- UPDATING MAIN ---\n";
	git pull origin main