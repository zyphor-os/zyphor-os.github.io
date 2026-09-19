add:
	git add Makefile
	git commit -m "chore: modified Makefile"

	git add bethany-lts/dists/bethany/InRelease
	git commit -m "chore: update bethany InRelease"

	git add bethany-lts/dists/bethany/Release
	git commit -m "chore: update bethany Release"

	git add bethany-lts/dists/bethany/Release.gpg
	git commit -m "chore: update bethany Release signature"

	git add bethany-lts/dists/bethany/main/binary-amd64/Packages
	git commit -m "chore: update bethany Packages"

	git add bethany-lts/dists/bethany/main/binary-amd64/Packages.gz
	git commit -m "chore: update bethany Packages.gz"

	git add -u bethany-lts/pool/main/z/zyphor-cli.deb
	git commit -m "chore: remove zyphor CLI package"

	git add bethany-lts/pool/main/z/zyphor-repo-config.deb
	git commit -m "chore: update zyphor repo config package"

	git add bethany-lts/dists/bethany/apps/
	git commit -m "feat: add bethany apps repository metadata"

	git add bethany-lts/pool/apps/
	git commit -m "feat: add bethany apps packages"

pret:
	sh prettify ada-lovelace-lts/registry/registry.json

min:
	sh minify ada-lovelace-lts/registry/registry.json
