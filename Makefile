add:
	git add Makefile
	git commit -m "chore: modified Makefile"

	# Update Ada Lovelace Reforged Apps InRelease metadata
	git add ada-lovelace-lts-reforged/ada-lovelace-apps/dists/ada-lovelace-apps/InRelease
	git commit -m "repo(ada-lovelace-apps): update InRelease metadata"

	# Update Ada Lovelace Reforged Apps Release metadata
	git add ada-lovelace-lts-reforged/ada-lovelace-apps/dists/ada-lovelace-apps/Release
	git commit -m "repo(ada-lovelace-apps): update Release metadata"

	# Update Ada Lovelace Reforged Apps Release signature
	git add ada-lovelace-lts-reforged/ada-lovelace-apps/dists/ada-lovelace-apps/Release.gpg
	git commit -m "repo(ada-lovelace-apps): update Release signature"

	# Update Ada Lovelace Reforged Apps AMD64 package index
	git add ada-lovelace-lts-reforged/ada-lovelace-apps/dists/ada-lovelace-apps/main/binary-amd64/Packages
	git commit -m "repo(ada-lovelace-apps): update AMD64 package index"

	# Update compressed Ada Lovelace Reforged Apps AMD64 package index
	git add ada-lovelace-lts-reforged/ada-lovelace-apps/dists/ada-lovelace-apps/main/binary-amd64/Packages.gz
	git commit -m "repo(ada-lovelace-apps): update compressed AMD64 package index"

	# Update Ada Lovelace Reforged Zyphor What's New package
	git add ada-lovelace-lts-reforged/ada-lovelace-apps/pool/main/z/zyphor-whats-new.deb
	git commit -m "pkg(ada-lovelace-apps): update zyphor-whats-new package"

	# Update Ada Lovelace Reforged InRelease metadata
	git add ada-lovelace-lts-reforged/ada-lovelace/dists/ada-lovelace/InRelease
	git commit -m "repo(ada-lovelace): update InRelease metadata"

	# Update Ada Lovelace Reforged Release metadata
	git add ada-lovelace-lts-reforged/ada-lovelace/dists/ada-lovelace/Release
	git commit -m "repo(ada-lovelace): update Release metadata"

	# Update Ada Lovelace Reforged Release signature
	git add ada-lovelace-lts-reforged/ada-lovelace/dists/ada-lovelace/Release.gpg
	git commit -m "repo(ada-lovelace): update Release signature"

	# Update Ada Lovelace Reforged AMD64 package index
	git add ada-lovelace-lts-reforged/ada-lovelace/dists/ada-lovelace/main/binary-amd64/Packages
	git commit -m "repo(ada-lovelace): update AMD64 package index"

	# Update compressed Ada Lovelace Reforged AMD64 package index
	git add ada-lovelace-lts-reforged/ada-lovelace/dists/ada-lovelace/main/binary-amd64/Packages.gz
	git commit -m "repo(ada-lovelace): update compressed AMD64 package index"

	# Update Ada Lovelace Reforged Zyphor Bashrc Config package
	git add ada-lovelace-lts-reforged/ada-lovelace/pool/main/z/zyphor-bashrc-config.deb
	git commit -m "pkg(ada-lovelace): update zyphor-bashrc-config package"

pret:
	sh prettify ada-lovelace-lts/registry/registry.json

min:
	sh minify ada-lovelace-lts/registry/registry.json

update:
	@echo "\n--- FETCHING ORIGIN REPOSITORY ---\n";
	git fetch origin
	@echo "\n--- UPDATING MAIN ---\n";
	git pull origin main