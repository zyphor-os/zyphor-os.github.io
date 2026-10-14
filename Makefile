add:
	git add Makefile
	git commit -m "chore: modified Makefile"

	# Bethany Apps repository metadata
	git add bethany-lts/bethany-apps/dists/bethany-apps/InRelease
	git commit -m "chore: update Bethany Apps InRelease metadata"

	git add bethany-lts/bethany-apps/dists/bethany-apps/Release
	git commit -m "chore: update Bethany Apps Release metadata"

	git add bethany-lts/bethany-apps/dists/bethany-apps/Release.gpg
	git commit -m "chore: update Bethany Apps Release signature"

	git add bethany-lts/bethany-apps/dists/bethany-apps/main/binary-amd64/Packages \
		bethany-lts/bethany-apps/dists/bethany-apps/main/binary-amd64/Packages.gz
	git commit -m "chore: update Bethany Apps AMD64 package indexes"

	git add bethany-lts/bethany-apps/pool/main/z/zyphor-whats-new.deb
	git commit -m "chore: update zyphor-whats-new package"

	# Bethany main repository metadata
	git add bethany-lts/bethany/dists/bethany/InRelease
	git commit -m "chore: update Bethany InRelease metadata"

	git add bethany-lts/bethany/dists/bethany/Release
	git commit -m "chore: update Bethany Release metadata"

	git add bethany-lts/bethany/dists/bethany/Release.gpg
	git commit -m "chore: update Bethany Release signature"

	git add bethany-lts/bethany/dists/bethany/main/binary-amd64/Packages \
		bethany-lts/bethany/dists/bethany/main/binary-amd64/Packages.gz
	git commit -m "chore: update Bethany AMD64 package indexes"

	# Updated desktop and OS release packages
	git add bethany-lts/bethany/pool/main/z/zyphor-desktop-environment.deb
	git commit -m "chore: update Zyphor desktop environment package"

	git add bethany-lts/bethany/pool/main/z/zyphor-os-release.deb
	git commit -m "chore: update Zyphor OS release package"

pret:
	sh prettify ada-lovelace-lts/registry/registry.json

min:
	sh minify ada-lovelace-lts/registry/registry.json

update:
	@echo "\n--- FETCHING ORIGIN REPOSITORY ---\n";
	git fetch origin
	@echo "\n--- UPDATING MAIN ---\n";
	git pull origin main