add:
# 
	git add Makefile
	git commit -m "chore: modified Makefile"

	# Update Ada Apps repository metadata
	git add ada-lovelace-lts-reforged/ada-lovelace-apps/dists/ada-lovelace-apps/InRelease
	git commit -m "repo(ada): update Apps InRelease"

	git add ada-lovelace-lts-reforged/ada-lovelace-apps/dists/ada-lovelace-apps/Release
	git commit -m "repo(ada): update Apps Release"

	git add ada-lovelace-lts-reforged/ada-lovelace-apps/dists/ada-lovelace-apps/Release.gpg
	git commit -m "repo(ada): update Apps Release signature"

	git add ada-lovelace-lts-reforged/ada-lovelace-apps/dists/ada-lovelace-apps/main/binary-amd64/Packages
	git commit -m "repo(ada): update Apps package index"

	git add ada-lovelace-lts-reforged/ada-lovelace-apps/dists/ada-lovelace-apps/main/binary-amd64/Packages.gz
	git commit -m "repo(ada): update compressed Apps package index"

	# Update Ada Smart Downloads package
	git add ada-lovelace-lts-reforged/ada-lovelace-apps/pool/main/z/zyphor-smart-downloads.deb
	git commit -m "pkg(ada): update Smart Downloads package"

	# Update Bethany Apps repository metadata
	git add bethany-lts/bethany-apps/dists/bethany-apps/InRelease
	git commit -m "repo(bethany): update Apps InRelease"

	git add bethany-lts/bethany-apps/dists/bethany-apps/Release
	git commit -m "repo(bethany): update Apps Release"

	git add bethany-lts/bethany-apps/dists/bethany-apps/Release.gpg
	git commit -m "repo(bethany): update Apps Release signature"

	git add bethany-lts/bethany-apps/dists/bethany-apps/main/binary-amd64/Packages
	git commit -m "repo(bethany): update Apps package index"

	git add bethany-lts/bethany-apps/dists/bethany-apps/main/binary-amd64/Packages.gz
	git commit -m "repo(bethany): update compressed Apps package index"

	# Update Bethany Smart Downloads package
	git add bethany-lts/bethany-apps/pool/main/z/zyphor-smart-downloads.deb
	git commit -m "pkg(bethany): update Smart Downloads package"

pret:
	sh prettify ada-lovelace-lts/registry/registry.json

min:
	sh minify ada-lovelace-lts/registry/registry.json

update:
	@echo "\n--- FETCHING ORIGIN REPOSITORY ---\n";
	git fetch origin
	@echo "\n--- UPDATING MAIN ---\n";
	git pull origin main