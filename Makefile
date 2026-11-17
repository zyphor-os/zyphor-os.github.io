add:
	git add Makefile
	git commit -m "chore: modified Makefile"

	# Ada Apps - InRelease
	git add ada-lovelace-lts-reforged/ada-lovelace-apps/dists/ada-lovelace-apps/InRelease
	git commit -m "repo(ada): update apps InRelease"

	# Ada Apps - Release
	git add ada-lovelace-lts-reforged/ada-lovelace-apps/dists/ada-lovelace-apps/Release
	git commit -m "repo(ada): update apps Release"

	# Ada Apps - Release signature
	git add ada-lovelace-lts-reforged/ada-lovelace-apps/dists/ada-lovelace-apps/Release.gpg
	git commit -m "repo(ada): update apps Release signature"

	# Ada Apps - Packages
	git add ada-lovelace-lts-reforged/ada-lovelace-apps/dists/ada-lovelace-apps/main/binary-amd64/Packages
	git commit -m "repo(ada): update apps package index"

	# Ada Apps - Packages.gz
	git add ada-lovelace-lts-reforged/ada-lovelace-apps/dists/ada-lovelace-apps/main/binary-amd64/Packages.gz
	git commit -m "repo(ada): update compressed apps package index"

	# Ada Apps - What's New package
	git add ada-lovelace-lts-reforged/ada-lovelace-apps/pool/main/z/zyphor-whats-new.deb
	git commit -m "pkg(ada): update zyphor-whats-new"

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

	# Ada - Bashrc Config package
	git add ada-lovelace-lts-reforged/ada-lovelace/pool/main/z/zyphor-bashrc-config.deb
	git commit -m "pkg(ada): update zyphor-bashrc-config"

	# Bethany Apps - InRelease
	git add bethany-lts/bethany-apps/dists/bethany-apps/InRelease
	git commit -m "repo(bethany): update apps InRelease"

	# Bethany Apps - Release
	git add bethany-lts/bethany-apps/dists/bethany-apps/Release
	git commit -m "repo(bethany): update apps Release"

	# Bethany Apps - Release signature
	git add bethany-lts/bethany-apps/dists/bethany-apps/Release.gpg
	git commit -m "repo(bethany): update apps Release signature"

	# Bethany Apps - Packages
	git add bethany-lts/bethany-apps/dists/bethany-apps/main/binary-amd64/Packages
	git commit -m "repo(bethany): update apps package index"

	# Bethany Apps - Packages.gz
	git add bethany-lts/bethany-apps/dists/bethany-apps/main/binary-amd64/Packages.gz
	git commit -m "repo(bethany): update compressed apps package index"

	# Bethany Apps - What's New package
	git add bethany-lts/bethany-apps/pool/main/z/zyphor-whats-new.deb
	git commit -m "pkg(bethany): update zyphor-whats-new"

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

	# Bethany - Bashrc Config package
	git add bethany-lts/bethany/pool/main/z/zyphor-bashrc-config.deb
	git commit -m "pkg(bethany): update zyphor-bashrc-config"

pret:
	sh prettify ada-lovelace-lts/registry/registry.json

min:
	sh minify ada-lovelace-lts/registry/registry.json

update:
	@echo "\n--- FETCHING ORIGIN REPOSITORY ---\n";
	git fetch origin
	@echo "\n--- UPDATING MAIN ---\n";
	git pull origin main