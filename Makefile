add:
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

	# Update Ada What's New package
	git add ada-lovelace-lts-reforged/ada-lovelace-apps/pool/main/z/zyphor-whats-new.deb
	git commit -m "pkg(ada): update What's New package"

	# Update Ada main repository metadata
	git add ada-lovelace-lts-reforged/ada-lovelace/dists/ada-lovelace/InRelease
	git commit -m "repo(ada): update main InRelease"

	git add ada-lovelace-lts-reforged/ada-lovelace/dists/ada-lovelace/Release
	git commit -m "repo(ada): update main Release"

	git add ada-lovelace-lts-reforged/ada-lovelace/dists/ada-lovelace/Release.gpg
	git commit -m "repo(ada): update main Release signature"

	git add ada-lovelace-lts-reforged/ada-lovelace/dists/ada-lovelace/main/binary-amd64/Packages
	git commit -m "repo(ada): update main package index"

	git add ada-lovelace-lts-reforged/ada-lovelace/dists/ada-lovelace/main/binary-amd64/Packages.gz
	git commit -m "repo(ada): update compressed main package index"

	# Add Ada Debian Handler package
	git add ada-lovelace-lts-reforged/ada-lovelace/pool/main/z/zyphor-debian-handler.deb
	git commit -m "pkg(ada): add Debian Handler package"

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

	# Update Bethany What's New package
	git add bethany-lts/bethany-apps/pool/main/z/zyphor-whats-new.deb
	git commit -m "pkg(bethany): update What's New package"

	# Update Bethany main repository metadata
	git add bethany-lts/bethany/dists/bethany/InRelease
	git commit -m "repo(bethany): update main InRelease"

	git add bethany-lts/bethany/dists/bethany/Release
	git commit -m "repo(bethany): update main Release"

	git add bethany-lts/bethany/dists/bethany/Release.gpg
	git commit -m "repo(bethany): update main Release signature"

	git add bethany-lts/bethany/dists/bethany/main/binary-amd64/Packages
	git commit -m "repo(bethany): update main package index"

	git add bethany-lts/bethany/dists/bethany/main/binary-amd64/Packages.gz
	git commit -m "repo(bethany): update compressed main package index"

	# Add Bethany Debian Handler package
	git add bethany-lts/bethany/pool/main/z/zyphor-debian-handler.deb
	git commit -m "pkg(bethany): add Debian Handler package"

pret:
	sh prettify ada-lovelace-lts/registry/registry.json

min:
	sh minify ada-lovelace-lts/registry/registry.json

update:
	@echo "\n--- FETCHING ORIGIN REPOSITORY ---\n";
	git fetch origin
	@echo "\n--- UPDATING MAIN ---\n";
	git pull origin main