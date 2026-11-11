add:
	git add Makefile
	git commit -m "chore: modified Makefile"

	# Update Ada Lovelace Reforged repository metadata
	git add ada-lovelace-lts-reforged/ada-lovelace-apps/dists/ada-lovelace-apps/InRelease
	git commit -m "repo: update Ada Reforged InRelease metadata"

	git add ada-lovelace-lts-reforged/ada-lovelace-apps/dists/ada-lovelace-apps/Release
	git commit -m "repo: update Ada Reforged Release metadata"

	git add ada-lovelace-lts-reforged/ada-lovelace-apps/dists/ada-lovelace-apps/Release.gpg
	git commit -m "repo: update Ada Reforged Release signature"

	# Update Ada Reforged package indexes
	git add ada-lovelace-lts-reforged/ada-lovelace-apps/dists/ada-lovelace-apps/main/binary-amd64/Packages
	git commit -m "repo: update Ada Reforged package index"

	git add ada-lovelace-lts-reforged/ada-lovelace-apps/dists/ada-lovelace-apps/main/binary-amd64/Packages.gz
	git commit -m "repo: update compressed Ada Reforged package index"

	# Update Ada Reforged Debian packages
	git add ada-lovelace-lts-reforged/ada-lovelace-apps/pool/main/z/zyphor-cli.deb
	git commit -m "pkg(zyphor-cli): update Ada Reforged package"

	git add ada-lovelace-lts-reforged/ada-lovelace-apps/pool/main/z/zyphor-command-center.deb
	git commit -m "pkg(command-center): update Ada Reforged package"

	git add ada-lovelace-lts-reforged/ada-lovelace-apps/pool/main/z/zyphor-whats-new.deb
	git commit -m "pkg(whats-new): update Ada Reforged package"

	# Update Bethany repository metadata
	git add bethany-lts/bethany-apps/dists/bethany-apps/InRelease
	git commit -m "repo: update Bethany InRelease metadata"

	git add bethany-lts/bethany-apps/dists/bethany-apps/Release
	git commit -m "repo: update Bethany Release metadata"

	git add bethany-lts/bethany-apps/dists/bethany-apps/Release.gpg
	git commit -m "repo: update Bethany Release signature"

	# Update Bethany package indexes
	git add bethany-lts/bethany-apps/dists/bethany-apps/main/binary-amd64/Packages
	git commit -m "repo: update Bethany package index"

	git add bethany-lts/bethany-apps/dists/bethany-apps/main/binary-amd64/Packages.gz
	git commit -m "repo: update compressed Bethany package index"

	# Update Bethany Debian packages
	git add bethany-lts/bethany-apps/pool/main/z/zyphor-cli.deb
	git commit -m "pkg(zyphor-cli): update Bethany package"

	git add bethany-lts/bethany-apps/pool/main/z/zyphor-command-center.deb
	git commit -m "pkg(command-center): update Bethany package"

	git add bethany-lts/bethany-apps/pool/main/z/zyphor-whats-new.deb
	git commit -m "pkg(whats-new): update Bethany package"

	# Update documentation page
	git add docs.html
	git commit -m "docs: update website documentation"

pret:
	sh prettify ada-lovelace-lts/registry/registry.json

min:
	sh minify ada-lovelace-lts/registry/registry.json

update:
	@echo "\n--- FETCHING ORIGIN REPOSITORY ---\n";
	git fetch origin
	@echo "\n--- UPDATING MAIN ---\n";
	git pull origin main