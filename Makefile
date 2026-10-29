add:
	git add Makefile
	git commit -m "chore: modified Makefile"

	# Update Bethany Apps InRelease metadata
	git add bethany-lts/bethany-apps/dists/bethany-apps/InRelease
	git commit -m "repo(bethany-apps): update InRelease metadata"

	# Update Bethany Apps Release metadata
	git add bethany-lts/bethany-apps/dists/bethany-apps/Release
	git commit -m "repo(bethany-apps): update Release metadata"

	# Update Bethany Apps Release signature
	git add bethany-lts/bethany-apps/dists/bethany-apps/Release.gpg
	git commit -m "repo(bethany-apps): update Release signature"

	# Update Bethany Apps AMD64 package index
	git add bethany-lts/bethany-apps/dists/bethany-apps/main/binary-amd64/Packages
	git commit -m "repo(bethany-apps): update AMD64 package index"

	# Update Bethany Apps compressed AMD64 package index
	git add bethany-lts/bethany-apps/dists/bethany-apps/main/binary-amd64/Packages.gz
	git commit -m "repo(bethany-apps): update compressed AMD64 package index"

	# Update Zyphor What's New package
	git add bethany-lts/bethany-apps/pool/main/z/zyphor-whats-new.deb
	git commit -m "pkg(bethany-apps): update zyphor-whats-new package"

	# Update Bethany InRelease metadata
	git add bethany-lts/bethany/dists/bethany/InRelease
	git commit -m "repo(bethany): update InRelease metadata"

	# Update Bethany Release metadata
	git add bethany-lts/bethany/dists/bethany/Release
	git commit -m "repo(bethany): update Release metadata"

	# Update Bethany Release signature
	git add bethany-lts/bethany/dists/bethany/Release.gpg
	git commit -m "repo(bethany): update Release signature"

	# Update Bethany AMD64 package index
	git add bethany-lts/bethany/dists/bethany/main/binary-amd64/Packages
	git commit -m "repo(bethany): update AMD64 package index"

	# Update Bethany compressed AMD64 package index
	git add bethany-lts/bethany/dists/bethany/main/binary-amd64/Packages.gz
	git commit -m "repo(bethany): update compressed AMD64 package index"

	# Update Zyphor Bashrc Config package
	git add bethany-lts/bethany/pool/main/z/zyphor-bashrc-config.deb
	git commit -m "pkg(bethany): update zyphor-bashrc-config package"

pret:
	sh prettify ada-lovelace-lts/registry/registry.json

min:
	sh minify ada-lovelace-lts/registry/registry.json

update:
	@echo "\n--- FETCHING ORIGIN REPOSITORY ---\n";
	git fetch origin
	@echo "\n--- UPDATING MAIN ---\n";
	git pull origin main