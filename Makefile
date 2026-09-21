add:
	git add Makefile
	git commit -m "chore: modified Makefile"

	git add -u bethany-lts/dists/bethany/InRelease
	git commit -m "chore: update bethany InRelease"

	git add -u bethany-lts/dists/bethany/Release
	git commit -m "chore: update bethany Release"

	git add -u bethany-lts/dists/bethany/Release.gpg
	git commit -m "chore: update bethany Release signature"

	git add -u bethany-lts/dists/bethany/apps/binary-amd64/Packages
	git commit -m "chore: update bethany apps Packages"

	git add -u bethany-lts/dists/bethany/apps/binary-amd64/Packages.gz
	git commit -m "chore: update bethany apps Packages.gz"

	git add -u bethany-lts/dists/bethany/main/binary-amd64/Packages
	git commit -m "chore: update bethany Packages"

	git add -u bethany-lts/dists/bethany/main/binary-amd64/Packages.gz
	git commit -m "chore: update bethany Packages.gz"

	git add -u bethany-lts/pool/apps/z/zyphor-cli.deb
	git commit -m "chore: remove zyphor CLI package"

	git add -u bethany-lts/pool/main/z/zyphor-archive-keyring.deb
	git commit -m "chore: remove zyphor archive keyring package"

	git add -u bethany-lts/pool/main/z/zyphor-background-themes.deb
	git commit -m "chore: remove zyphor background themes package"

	git add -u bethany-lts/pool/main/z/zyphor-bashrc-config.deb
	git commit -m "chore: remove zyphor bashrc config package"

	git add -u bethany-lts/pool/main/z/zyphor-desktop-environment-theme.deb
	git commit -m "chore: remove zyphor desktop environment theme package"

	git add -u bethany-lts/pool/main/z/zyphor-fastfetch-config.deb
	git commit -m "chore: remove zyphor fastfetch config package"

	git add -u bethany-lts/pool/main/z/zyphor-grub-theme.deb
	git commit -m "chore: remove zyphor GRUB theme package"

	git add -u bethany-lts/pool/main/z/zyphor-os-release.deb
	git commit -m "chore: remove zyphor OS release package"

	git add -u bethany-lts/pool/main/z/zyphor-repo-config.deb
	git commit -m "chore: remove zyphor repo config package"

	git add bethany-lts/bethany-apps/
	git commit -m "feat: add bethany apps repository"

	git add bethany-lts/bethany/
	git commit -m "feat: add bethany repository metadata"

pret:
	sh prettify ada-lovelace-lts/registry/registry.json

min:
	sh minify ada-lovelace-lts/registry/registry.json
