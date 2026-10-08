add:
	git add Makefile
	git commit -m "chore: modified Makefile"

	git add bethany-lts/bethany-apps/dists/bethany-apps/InRelease
	git commit -m "chore: update Bethany Apps InRelease"

	git add bethany-lts/bethany-apps/dists/bethany-apps/Release
	git commit -m "chore: update Bethany Apps Release"

	git add bethany-lts/bethany-apps/dists/bethany-apps/Release.gpg
	git commit -m "chore: update Bethany Apps Release signature"

	git add bethany-lts/bethany-apps/dists/bethany-apps/main/binary-amd64/Packages
	git commit -m "chore: update Bethany Apps package index"

	git add bethany-lts/bethany-apps/dists/bethany-apps/main/binary-amd64/Packages.gz
	git commit -m "chore: update compressed Bethany Apps package index"

	git add bethany-lts/bethany-apps/pool/main/z/zyphor-whats-new.deb
	git commit -m "chore: update zyphor What's New package"

	git add bethany-lts/bethany/dists/bethany/InRelease
	git commit -m "chore: update Bethany InRelease"

	git add bethany-lts/bethany/dists/bethany/Release
	git commit -m "chore: update Bethany Release"

	git add bethany-lts/bethany/dists/bethany/Release.gpg
	git commit -m "chore: update Bethany Release signature"

	git add bethany-lts/bethany/dists/bethany/main/binary-amd64/Packages
	git commit -m "chore: update Bethany package index"

	git add bethany-lts/bethany/dists/bethany/main/binary-amd64/Packages.gz
	git commit -m "chore: update compressed Bethany package index"

	git add bethany-lts/bethany/pool/main/z/zyphor-desktop-environment.deb
	git commit -m "chore: update zyphor desktop environment package"

pret:
	sh prettify ada-lovelace-lts/registry/registry.json

min:
	sh minify ada-lovelace-lts/registry/registry.json
