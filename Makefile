add:
	git add Makefile
	git commit -m "chore: modified Makefile"

	# Update Bethany LTS Apps InRelease
	git add bethany-lts/bethany-apps/dists/bethany-apps/InRelease
	git commit -m "repo: update Bethany LTS Apps InRelease"

	# Update Bethany LTS Apps Release metadata
	git add bethany-lts/bethany-apps/dists/bethany-apps/Release
	git commit -m "repo: update Bethany LTS Apps Release metadata"

	# Update Bethany LTS Apps Release signature
	git add bethany-lts/bethany-apps/dists/bethany-apps/Release.gpg
	git commit -m "repo: update Bethany LTS Apps Release signature"

	# Update AMD64 Apps package index
	git add bethany-lts/bethany-apps/dists/bethany-apps/main/binary-amd64/Packages
	git commit -m "repo: update Bethany LTS Apps AMD64 package index"

	# Update compressed AMD64 Apps package index
	git add bethany-lts/bethany-apps/dists/bethany-apps/main/binary-amd64/Packages.gz
	git commit -m "repo: update compressed Bethany LTS Apps package index"

	# Update ZyLearn package
	git add bethany-lts/bethany-apps/pool/main/z/zylearn.deb
	git commit -m "repo: update zylearn package"

pret:
	sh prettify ada-lovelace-lts/registry/registry.json

min:
	sh minify ada-lovelace-lts/registry/registry.json

update:
	@echo "\n--- FETCHING ORIGIN REPOSITORY ---\n";
	git fetch origin
	@echo "\n--- UPDATING MAIN ---\n";
	git pull origin main