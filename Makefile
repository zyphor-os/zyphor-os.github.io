add:
	git add Makefile
	git commit -m "chore: modified Makefile"

	# Update Ada Lovelace LTS Reforged Apps InRelease
	git add ada-lovelace-lts-reforged/ada-lovelace-apps/dists/ada-lovelace-apps/InRelease
	git commit -m "repo: update Ada Lovelace Reforged Apps InRelease"

	# Update Ada Lovelace LTS Reforged Apps Release metadata
	git add ada-lovelace-lts-reforged/ada-lovelace-apps/dists/ada-lovelace-apps/Release
	git commit -m "repo: update Ada Lovelace Reforged Apps Release metadata"

	# Update Ada Lovelace LTS Reforged Apps Release signature
	git add ada-lovelace-lts-reforged/ada-lovelace-apps/dists/ada-lovelace-apps/Release.gpg
	git commit -m "repo: update Ada Lovelace Reforged Apps Release signature"

	# Update AMD64 Apps package index
	git add ada-lovelace-lts-reforged/ada-lovelace-apps/dists/ada-lovelace-apps/main/binary-amd64/Packages
	git commit -m "repo: update Ada Lovelace Reforged Apps AMD64 package index"

	# Update compressed AMD64 Apps package index
	git add ada-lovelace-lts-reforged/ada-lovelace-apps/dists/ada-lovelace-apps/main/binary-amd64/Packages.gz
	git commit -m "repo: update compressed Ada Lovelace Reforged Apps package index"

	# Update ZyLearn package
	git add ada-lovelace-lts-reforged/ada-lovelace-apps/pool/main/z/zylearn.deb
	git commit -m "repo: update ZyLearn package"

	# Update Zyphor CLI package
	git add ada-lovelace-lts-reforged/ada-lovelace-apps/pool/main/z/zyphor-cli.deb
	git commit -m "repo: update Zyphor CLI package"

pret:
	sh prettify ada-lovelace-lts/registry/registry.json

min:
	sh minify ada-lovelace-lts/registry/registry.json

update:
	@echo "\n--- FETCHING ORIGIN REPOSITORY ---\n";
	git fetch origin
	@echo "\n--- UPDATING MAIN ---\n";
	git pull origin main