add:
	git add Makefile
	git commit -m "chore: modified Makefile"

	git add bethany-lts/bethany-apps/dists/bethany-apps/InRelease
	git commit -m "chore: update apps repository InRelease"

	git add bethany-lts/bethany-apps/dists/bethany-apps/Release
	git commit -m "chore: update apps repository Release"

	git add bethany-lts/bethany-apps/dists/bethany-apps/Release.gpg
	git commit -m "chore: update apps repository Release signature"

	git add bethany-lts/bethany-apps/dists/bethany-apps/main/binary-amd64/Packages
	git commit -m "chore: update apps repository package index"

	git add bethany-lts/bethany-apps/dists/bethany-apps/main/binary-amd64/Packages.gz
	git commit -m "chore: update compressed apps package index"

	git add bethany-lts/bethany-apps/pool/main/z/zyphor-cli.deb
	git commit -m "chore: update zyphor-cli package"

	git add bethany-lts/bethany-apps/pool/main/z/zyphor-whats-new.deb
	git commit -m "chore: update zyphor-whats-new package"

pret:
	sh prettify ada-lovelace-lts/registry/registry.json

min:
	sh minify ada-lovelace-lts/registry/registry.json

update:
	@echo "\n--- FETCHING ORIGIN REPOSITORY ---\n";
	git fetch origin
	@echo "\n--- UPDATING MAIN ---\n";
	git pull origin main