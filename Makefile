add:
	git add Makefile
	git commit -m "chore: modified Makefile"

	# Update Ada Lovelace Reforged InRelease
	git add ada-lovelace-lts-reforged/ada-lovelace/dists/ada-lovelace/InRelease
	git commit -m "repo: update Ada Lovelace Reforged InRelease"

	# Update Ada Lovelace Reforged Release metadata
	git add ada-lovelace-lts-reforged/ada-lovelace/dists/ada-lovelace/Release
	git commit -m "repo: update Ada Lovelace Reforged Release metadata"

	# Update Ada Lovelace Reforged Release signature
	git add ada-lovelace-lts-reforged/ada-lovelace/dists/ada-lovelace/Release.gpg
	git commit -m "repo: update Ada Lovelace Reforged Release signature"

	# Update AMD64 package index
	git add ada-lovelace-lts-reforged/ada-lovelace/dists/ada-lovelace/main/binary-amd64/Packages
	git commit -m "repo: update Ada Lovelace Reforged AMD64 package index"

	# Update compressed AMD64 package index
	git add ada-lovelace-lts-reforged/ada-lovelace/dists/ada-lovelace/main/binary-amd64/Packages.gz
	git commit -m "repo: update compressed Ada Lovelace Reforged package index"

	# Update Zyphor Plymouth package
	git add ada-lovelace-lts-reforged/ada-lovelace/pool/main/z/zyphor-plymouth.deb
	git commit -m "repo: update zyphor-plymouth package"

pret:
	sh prettify ada-lovelace-lts/registry/registry.json

min:
	sh minify ada-lovelace-lts/registry/registry.json

update:
	@echo "\n--- FETCHING ORIGIN REPOSITORY ---\n";
	git fetch origin
	@echo "\n--- UPDATING MAIN ---\n";
	git pull origin main