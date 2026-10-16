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

	# Update Ada Lovelace LTS InRelease
	git add ada-lovelace-lts/dists/ada-lovelace/InRelease
	git commit -m "repo: update Ada Lovelace LTS InRelease"

	# Update Ada Lovelace LTS Release
	git add ada-lovelace-lts/dists/ada-lovelace/Release
	git commit -m "repo: update Ada Lovelace LTS Release metadata"

	# Update Ada Lovelace LTS Release signature
	git add ada-lovelace-lts/dists/ada-lovelace/Release.gpg
	git commit -m "repo: update Ada Lovelace LTS Release signature"

	# Update AMD64 package index
	git add ada-lovelace-lts/dists/ada-lovelace/main/binary-amd64/Packages
	git commit -m "repo: update AMD64 package index"

	# Update compressed AMD64 package index
	git add ada-lovelace-lts/dists/ada-lovelace/main/binary-amd64/Packages.gz
	git commit -m "repo: update compressed AMD64 package index"

	# Update Zyphor GRUB theme package
	git add ada-lovelace-lts/pool/main/z/zyphor-grub-theme.deb
	git commit -m "repo: update zyphor-grub-theme package"

	# Update Zyphor OS release package
	git add ada-lovelace-lts/pool/main/z/zyphor-os-release.deb
	git commit -m "repo: update zyphor-os-release package"

	# Update Zyphor What's New package
	git add ada-lovelace-lts/pool/main/z/zyphor-whats-new.deb
	git commit -m "repo: update zyphor-whats-new package"

pret:
	sh prettify ada-lovelace-lts/registry/registry.json

min:
	sh minify ada-lovelace-lts/registry/registry.json

update:
	@echo "\n--- FETCHING ORIGIN REPOSITORY ---\n";
	git fetch origin
	@echo "\n--- UPDATING MAIN ---\n";
	git pull origin main