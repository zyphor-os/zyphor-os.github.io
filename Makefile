add:
	git add Makefile
	git commit -m "chore: modified Makefile"

	# Update InRelease
	git add bethany-lts/bethany/dists/bethany/InRelease
	git commit -m "repo(bethany): update InRelease"

	# Update Release
	git add bethany-lts/bethany/dists/bethany/Release
	git commit -m "repo(bethany): update Release"

	# Update Release signature
	git add bethany-lts/bethany/dists/bethany/Release.gpg
	git commit -m "repo(bethany): update Release signature"

	# Update Packages index
	git add bethany-lts/bethany/dists/bethany/main/binary-amd64/Packages
	git commit -m "repo(bethany): update package index"

	# Update compressed Packages index
	git add bethany-lts/bethany/dists/bethany/main/binary-amd64/Packages.gz
	git commit -m "repo(bethany): update compressed package index"

	# Add Zyphor Blesh package
	git add bethany-lts/bethany/pool/main/z/zyphor-blesh.deb
	git commit -m "pkg(bethany): add zyphor-blesh package"

pret:
	sh prettify ada-lovelace-lts/registry/registry.json

min:
	sh minify ada-lovelace-lts/registry/registry.json

update:
	@echo "\n--- FETCHING ORIGIN REPOSITORY ---\n";
	git fetch origin
	@echo "\n--- UPDATING MAIN ---\n";
	git pull origin main