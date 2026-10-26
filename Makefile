add:
	git add Makefile
	git commit -m "chore: modified Makefile"

	# Update Ada Lovelace Apps InRelease metadata
	git add ada-lovelace-lts-reforged/ada-lovelace-apps/dists/ada-lovelace-apps/InRelease
	git commit -m "repo(ada-lovelace): update InRelease metadata"

	# Update Ada Lovelace Apps Release metadata
	git add ada-lovelace-lts-reforged/ada-lovelace-apps/dists/ada-lovelace-apps/Release
	git commit -m "repo(ada-lovelace): update Release metadata"

	# Update Ada Lovelace Apps Release signature
	git add ada-lovelace-lts-reforged/ada-lovelace-apps/dists/ada-lovelace-apps/Release.gpg
	git commit -m "repo(ada-lovelace): update Release signature"

	# Update AMD64 package index
	git add ada-lovelace-lts-reforged/ada-lovelace-apps/dists/ada-lovelace-apps/main/binary-amd64/Packages
	git commit -m "repo(ada-lovelace): update AMD64 package index"

	# Update compressed AMD64 package index
	git add ada-lovelace-lts-reforged/ada-lovelace-apps/dists/ada-lovelace-apps/main/binary-amd64/Packages.gz
	git commit -m "repo(ada-lovelace): update compressed AMD64 package index"

	# Update Zyphor CLI package
	git add ada-lovelace-lts-reforged/ada-lovelace-apps/pool/main/z/zyphor-cli.deb
	git commit -m "pkg(ada-lovelace): update zyphor-cli package"

pret:
	sh prettify ada-lovelace-lts/registry/registry.json

min:
	sh minify ada-lovelace-lts/registry/registry.json

update:
	@echo "\n--- FETCHING ORIGIN REPOSITORY ---\n";
	git fetch origin
	@echo "\n--- UPDATING MAIN ---\n";
	git pull origin main