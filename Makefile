add:
	git add Makefile
	git commit -m "chore: modified Makefile"

	# Ada - InRelease
	git add ada-lovelace-lts-reforged/ada-lovelace/dists/ada-lovelace/InRelease
	git commit -m "repo(ada): update InRelease"

	# Ada - Release
	git add ada-lovelace-lts-reforged/ada-lovelace/dists/ada-lovelace/Release
	git commit -m "repo(ada): update Release"

	# Ada - Release signature
	git add ada-lovelace-lts-reforged/ada-lovelace/dists/ada-lovelace/Release.gpg
	git commit -m "repo(ada): update Release signature"

	# Ada - Packages
	git add ada-lovelace-lts-reforged/ada-lovelace/dists/ada-lovelace/main/binary-amd64/Packages
	git commit -m "repo(ada): update package index"

	# Ada - Packages.gz
	git add ada-lovelace-lts-reforged/ada-lovelace/dists/ada-lovelace/main/binary-amd64/Packages.gz
	git commit -m "repo(ada): update compressed package index"

	# Ada - Windows Handler package
	git add ada-lovelace-lts-reforged/ada-lovelace/pool/main/z/zyphor-windows-handler.deb
	git commit -m "pkg(ada): add zyphor-windows-handler"

	# Bethany - InRelease
	git add bethany-lts/bethany/dists/bethany/InRelease
	git commit -m "repo(bethany): update InRelease"

	# Bethany - Release
	git add bethany-lts/bethany/dists/bethany/Release
	git commit -m "repo(bethany): update Release"

	# Bethany - Release signature
	git add bethany-lts/bethany/dists/bethany/Release.gpg
	git commit -m "repo(bethany): update Release signature"

	# Bethany - Packages
	git add bethany-lts/bethany/dists/bethany/main/binary-amd64/Packages
	git commit -m "repo(bethany): update package index"

	# Bethany - Packages.gz
	git add bethany-lts/bethany/dists/bethany/main/binary-amd64/Packages.gz
	git commit -m "repo(bethany): update compressed package index"

	# Bethany - Windows Handler package
	git add bethany-lts/bethany/pool/main/z/zyphor-windows-handler.deb
	git commit -m "pkg(bethany): add zyphor-windows-handler"

pret:
	sh prettify ada-lovelace-lts/registry/registry.json

min:
	sh minify ada-lovelace-lts/registry/registry.json

update:
	@echo "\n--- FETCHING ORIGIN REPOSITORY ---\n";
	git fetch origin
	@echo "\n--- UPDATING MAIN ---\n";
	git pull origin main