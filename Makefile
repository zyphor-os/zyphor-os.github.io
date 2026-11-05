add:
# 
	git add Makefile
	git commit -m "chore: modified Makefile"

	# Update Bethany Apps repository metadata
	git add bethany-lts/bethany-apps/dists/bethany-apps/InRelease
	git commit -m "repo: update Bethany Apps InRelease metadata"

	git add bethany-lts/bethany-apps/dists/bethany-apps/Release
	git commit -m "repo: update Bethany Apps Release metadata"

	git add bethany-lts/bethany-apps/dists/bethany-apps/Release.gpg
	git commit -m "repo: update Bethany Apps Release signature"

	# Update package indexes
	git add bethany-lts/bethany-apps/dists/bethany-apps/main/binary-amd64/Packages
	git commit -m "repo: update Bethany Apps package index"

	git add bethany-lts/bethany-apps/dists/bethany-apps/main/binary-amd64/Packages.gz
	git commit -m "repo: update compressed Bethany Apps package index"

	# Update Debian packages
	git add bethany-lts/bethany-apps/pool/main/z/zyphor-command-center.deb
	git commit -m "pkg(command-center): update Bethany Apps package"

	git add bethany-lts/bethany-apps/pool/main/z/zyphor-whats-new.deb
	git commit -m "pkg(whats-new): update Bethany Apps package"

pret:
	sh prettify ada-lovelace-lts/registry/registry.json

min:
	sh minify ada-lovelace-lts/registry/registry.json

update:
	@echo "\n--- FETCHING ORIGIN REPOSITORY ---\n";
	git fetch origin
	@echo "\n--- UPDATING MAIN ---\n";
	git pull origin main