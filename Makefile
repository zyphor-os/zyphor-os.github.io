add:
	git add Makefile
	git commit -m "chore: modified Makefile"

	# Update InRelease
	git add ada-lovelace-lts-reforged/ada-lovelace/dists/ada-lovelace/InRelease
	git commit -m "repo(ada): update InRelease"

	# Update Release
	git add ada-lovelace-lts-reforged/ada-lovelace/dists/ada-lovelace/Release
	git commit -m "repo(ada): update Release"

	# Update Release signature
	git add ada-lovelace-lts-reforged/ada-lovelace/dists/ada-lovelace/Release.gpg
	git commit -m "repo(ada): update Release signature"

	# Update Packages index
	git add ada-lovelace-lts-reforged/ada-lovelace/dists/ada-lovelace/main/binary-amd64/Packages
	git commit -m "repo(ada): update package index"

	# Update compressed Packages index
	git add ada-lovelace-lts-reforged/ada-lovelace/dists/ada-lovelace/main/binary-amd64/Packages.gz
	git commit -m "repo(ada): update compressed package index"

	# Add Zyphor Blesh package
	git add ada-lovelace-lts-reforged/ada-lovelace/pool/main/z/zyphor-blesh.deb
	git commit -m "pkg(ada): add zyphor-blesh package"

pret:
	sh prettify ada-lovelace-lts/registry/registry.json

min:
	sh minify ada-lovelace-lts/registry/registry.json

update:
	@echo "\n--- FETCHING ORIGIN REPOSITORY ---\n";
	git fetch origin
	@echo "\n--- UPDATING MAIN ---\n";
	git pull origin main