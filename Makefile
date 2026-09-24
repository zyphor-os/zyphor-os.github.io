add:
# 
	git add Makefile
	git commit -m "chore: modified Makefile"

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

	git add -u bethany-lts/bethany/pool/main/z/zyphor-grub-theme.deb
	git commit -m "chore: remove zyphor GRUB theme package"

	git add -u bethany-lts/bethany/pool/main/z/zyphor-plymouth-live.deb
	git commit -m "chore: remove zyphor Plymouth live package"

pret:
	sh prettify ada-lovelace-lts/registry/registry.json

min:
	sh minify ada-lovelace-lts/registry/registry.json
