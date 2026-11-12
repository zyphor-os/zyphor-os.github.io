add:
	git add Makefile
	git commit -m "chore: modified Makefile"

	# Update Ada Lovelace Apps repository metadata
	git add ada-lovelace-lts-reforged/ada-lovelace-apps/dists/ada-lovelace-apps/InRelease ada-lovelace-lts-reforged/ada-lovelace-apps/dists/ada-lovelace-apps/Release ada-lovelace-lts-reforged/ada-lovelace-apps/dists/ada-lovelace-apps/Release.gpg ada-lovelace-lts-reforged/ada-lovelace-apps/dists/ada-lovelace-apps/main/binary-amd64/Packages ada-lovelace-lts-reforged/ada-lovelace-apps/dists/ada-lovelace-apps/main/binary-amd64/Packages.gz
	git commit -m "repo(ada): update apps repository metadata"

	# Update Ada Lovelace What's New package
	git add ada-lovelace-lts-reforged/ada-lovelace-apps/pool/main/z/zyphor-whats-new.deb
	git commit -m "pkg(ada): update zyphor-whats-new"

	# Update Ada Lovelace main repository metadata
	git add ada-lovelace-lts-reforged/ada-lovelace/dists/ada-lovelace/InRelease ada-lovelace-lts-reforged/ada-lovelace/dists/ada-lovelace/Release ada-lovelace-lts-reforged/ada-lovelace/dists/ada-lovelace/Release.gpg ada-lovelace-lts-reforged/ada-lovelace/dists/ada-lovelace/main/binary-amd64/Packages ada-lovelace-lts-reforged/ada-lovelace/dists/ada-lovelace/main/binary-amd64/Packages.gz
	git commit -m "repo(ada): update main repository metadata"

	# Update Ada Lovelace Bashrc Config package
	git add ada-lovelace-lts-reforged/ada-lovelace/pool/main/z/zyphor-bashrc-config.deb
	git commit -m "pkg(ada): update zyphor-bashrc-config"

	# Update Bethany Apps repository metadata
	git add bethany-lts/bethany-apps/dists/bethany-apps/InRelease bethany-lts/bethany-apps/dists/bethany-apps/Release bethany-lts/bethany-apps/dists/bethany-apps/Release.gpg bethany-lts/bethany-apps/dists/bethany-apps/main/binary-amd64/Packages bethany-lts/bethany-apps/dists/bethany-apps/main/binary-amd64/Packages.gz
	git commit -m "repo(bethany): update apps repository metadata"

	# Update Bethany What's New package
	git add bethany-lts/bethany-apps/pool/main/z/zyphor-whats-new.deb
	git commit -m "pkg(bethany): update zyphor-whats-new"

	# Update Bethany main repository metadata
	git add bethany-lts/bethany/dists/bethany/InRelease bethany-lts/bethany/dists/bethany/Release bethany-lts/bethany/dists/bethany/Release.gpg bethany-lts/bethany/dists/bethany/main/binary-amd64/Packages bethany-lts/bethany/dists/bethany/main/binary-amd64/Packages.gz
	git commit -m "repo(bethany): update main repository metadata"

	# Update Bethany Bashrc Config package
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