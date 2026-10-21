add:
	git add Makefile
	git commit -m "chore: modified Makefile"

	# Update Bethany LTS InRelease
	git add bethany-lts/bethany/dists/bethany/InRelease
	git commit -m "repo: update Bethany LTS InRelease"

	# Update Bethany LTS Release metadata
	git add bethany-lts/bethany/dists/bethany/Release
	git commit -m "repo: update Bethany LTS Release metadata"

	# Update Bethany LTS Release signature
	git add bethany-lts/bethany/dists/bethany/Release.gpg
	git commit -m "repo: update Bethany LTS Release signature"

	# Update AMD64 package index
	git add bethany-lts/bethany/dists/bethany/main/binary-amd64/Packages
	git commit -m "repo: update Bethany LTS AMD64 package index"

	# Update compressed AMD64 package index
	git add bethany-lts/bethany/dists/bethany/main/binary-amd64/Packages.gz
	git commit -m "repo: update compressed Bethany LTS package index"

	# Update Zyphor Plymouth package
	git add bethany-lts/bethany/pool/main/z/zyphor-plymouth.deb
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