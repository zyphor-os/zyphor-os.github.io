add:
	git add Makefile
	git commit -m "chore: modified Makefile"

	# Update Ada Lovelace repository metadata
	git add ada-lovelace-lts/dists/ada-lovelace/InRelease
	git commit -m "repo: update Ada Lovelace InRelease metadata"

	git add ada-lovelace-lts/dists/ada-lovelace/Release
	git commit -m "repo: update Ada Lovelace Release metadata"

	git add ada-lovelace-lts/dists/ada-lovelace/Release.gpg
	git commit -m "repo: update Ada Lovelace Release signature"

	# Update package indexes
	git add ada-lovelace-lts/dists/ada-lovelace/main/binary-amd64/Packages
	git commit -m "repo: update Ada Lovelace package index"

	git add ada-lovelace-lts/dists/ada-lovelace/main/binary-amd64/Packages.gz
	git commit -m "repo: update compressed Ada Lovelace package index"

	# Update Debian packages
	git add ada-lovelace-lts/pool/main/z/zyphor-grub-theme.deb
	git commit -m "pkg(grub-theme): update Ada Lovelace package"

	git add ada-lovelace-lts/pool/main/z/zyphor-os-release.deb
	git commit -m "pkg(os-release): update Ada Lovelace package"

	git add ada-lovelace-lts/pool/main/z/zyphor-whats-new.deb
	git commit -m "pkg(whats-new): update Ada Lovelace package"

pret:
	sh prettify ada-lovelace-lts/registry/registry.json

min:
	sh minify ada-lovelace-lts/registry/registry.json

update:
	@echo "\n--- FETCHING ORIGIN REPOSITORY ---\n";
	git fetch origin
	@echo "\n--- UPDATING MAIN ---\n";
	git pull origin main