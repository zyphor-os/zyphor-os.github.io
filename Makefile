add:
	git add Makefile
	git commit -m "chore: modified Makefile"

	# Update Reforged Ada Lovelace LTS InRelease
	git add ada-lovelace-lts-reforged/ada-lovelace/dists/ada-lovelace/InRelease
	git commit -m "repo: update Reforged InRelease"

	# Update Reforged Ada Lovelace LTS Release metadata
	git add ada-lovelace-lts-reforged/ada-lovelace/dists/ada-lovelace/Release
	git commit -m "repo: update Reforged Release metadata"

	# Update Reforged Ada Lovelace LTS Release signature
	git add ada-lovelace-lts-reforged/ada-lovelace/dists/ada-lovelace/Release.gpg
	git commit -m "repo: update Reforged Release signature"

	# Update Reforged AMD64 package index
	git add ada-lovelace-lts-reforged/ada-lovelace/dists/ada-lovelace/main/binary-amd64/Packages
	git commit -m "repo: update Reforged AMD64 package index"

	# Update compressed Reforged AMD64 package index
	git add ada-lovelace-lts-reforged/ada-lovelace/dists/ada-lovelace/main/binary-amd64/Packages.gz
	git commit -m "repo: update compressed Reforged package index"

	# Update Reforged desktop environment package
	git add ada-lovelace-lts-reforged/ada-lovelace/pool/main/z/zyphor-desktop-environment.deb
	git commit -m "repo: update Reforged desktop environment package"

pret:
	sh prettify ada-lovelace-lts/registry/registry.json

min:
	sh minify ada-lovelace-lts/registry/registry.json

update:
	@echo "\n--- FETCHING ORIGIN REPOSITORY ---\n";
	git fetch origin
	@echo "\n--- UPDATING MAIN ---\n";
	git pull origin main