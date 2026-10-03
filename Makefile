add:
	git add Makefile
	git commit -m "chore: modified Makefile"

	git add ada-lovelace-lts/dists/ada-lovelace/InRelease
	git commit -m "chore: update Ada Lovelace InRelease"

	git add ada-lovelace-lts/dists/ada-lovelace/Release
	git commit -m "chore: update Ada Lovelace Release"

	git add ada-lovelace-lts/dists/ada-lovelace/Release.gpg
	git commit -m "chore: update Ada Lovelace Release signature"

	git add ada-lovelace-lts/dists/ada-lovelace/main/binary-amd64/Packages
	git commit -m "chore: update Ada Lovelace package index"

	git add ada-lovelace-lts/dists/ada-lovelace/main/binary-amd64/Packages.gz
	git commit -m "chore: update compressed Ada Lovelace package index"

	git add ada-lovelace-lts/pool/main/z/zyphor-cli.deb
	git commit -m "chore: update zyphor CLI package"

	git add ada-lovelace-lts/pool/main/z/zyphor-grub-theme.deb
	git commit -m "chore: update zyphor GRUB theme package"

	git add ada-lovelace-lts/pool/main/z/zyphor-os-release.deb
	git commit -m "chore: update zyphor OS release package"

	git add ada-lovelace-lts/pool/main/z/zyphor-whats-new.deb
	git commit -m "chore: update zyphor What's New package"

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

	git add bethany-lts/bethany-apps/pool/main/z/zyphor-cli.deb
	git commit -m "chore: update Bethany Apps zyphor CLI package"
pret:
	sh prettify ada-lovelace-lts/registry/registry.json

min:
	sh minify ada-lovelace-lts/registry/registry.json
