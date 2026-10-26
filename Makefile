add:
	git add Makefile
	git commit -m "chore: modified Makefile"

	# Update Bethany Apps repository InRelease
	git add bethany-lts/bethany-apps/dists/bethany-apps/InRelease
	git commit -m "repo(bethany-apps): update InRelease metadata"

	# Update Bethany Apps repository Release
	git add bethany-lts/bethany-apps/dists/bethany-apps/Release
	git commit -m "repo(bethany-apps): update Release metadata"

	# Update Bethany Apps repository Release signature
	git add bethany-lts/bethany-apps/dists/bethany-apps/Release.gpg
	git commit -m "repo(bethany-apps): update Release signature"

	# Update AMD64 package index
	git add bethany-lts/bethany-apps/dists/bethany-apps/main/binary-amd64/Packages
	git commit -m "repo(bethany-apps): update AMD64 package index"

	# Update compressed AMD64 package index
	git add bethany-lts/bethany-apps/dists/bethany-apps/main/binary-amd64/Packages.gz
	git commit -m "repo(bethany-apps): update compressed AMD64 package index"

	# Update Zyphor CLI package
	git add bethany-lts/bethany-apps/pool/main/z/zyphor-cli.deb
	git commit -m "pkg(bethany): update zyphor-cli package"

pret:
	sh prettify ada-lovelace-lts/registry/registry.json

min:
	sh minify ada-lovelace-lts/registry/registry.json

update:
	@echo "\n--- FETCHING ORIGIN REPOSITORY ---\n";
	git fetch origin
	@echo "\n--- UPDATING MAIN ---\n";
	git pull origin main