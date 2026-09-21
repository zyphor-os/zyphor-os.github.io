add:
	git add Makefile
	git commit -m "chore: modified Makefile"

	git add bethany-lts/bethany-apps/dists/bethany-apps/InRelease
	git commit -m "chore: update bethany apps InRelease"

	git add bethany-lts/bethany-apps/dists/bethany-apps/Release
	git commit -m "chore: update bethany apps Release"

	git add bethany-lts/bethany-apps/dists/bethany-apps/Release.gpg
	git commit -m "chore: update bethany apps Release signature"

	git add bethany-lts/bethany-apps/dists/bethany-apps/main/binary-amd64/Packages
	git commit -m "chore: update bethany apps Packages"

	git add bethany-lts/bethany-apps/dists/bethany-apps/main/binary-amd64/Packages.gz
	git commit -m "chore: update bethany apps Packages.gz"

	git add bethany-lts/bethany-apps/pool/main/z/zycamera-launcher.deb
	git commit -m "chore: update zycamera launcher package"

	git add bethany-lts/bethany-apps/pool/main/z/zyphor-command-center.deb
	git commit -m "chore: update zyphor command center package"

pret:
	sh prettify ada-lovelace-lts/registry/registry.json

min:
	sh minify ada-lovelace-lts/registry/registry.json
