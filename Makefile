add:
	git add Makefile
	git commit -m "chore: modified Makefile"

	git add v2-ada-lovelace/dists/stable/main/binary-amd64/Packages
	git commit -m "chore: remove legacy Ada Lovelace package index"

	git add v2-ada-lovelace/dists/stable/main/binary-amd64/Packages.gz
	git commit -m "chore: remove legacy Ada Lovelace compressed package index"

	git add v2-ada-lovelace/pool/main/z/fastfetch-config-1.deb
	git commit -m "chore: remove legacy fastfetch config package"

	git add v2-ada-lovelace/pool/main/z/grub-screensaver-1.deb
	git commit -m "chore: remove legacy GRUB screensaver package"

	git add v2-ada-lovelace/pool/main/z/wallpapers-default-2026-2027.deb
	git commit -m "chore: remove legacy default wallpapers package"

	git add v2-ada-lovelace/pool/main/z/wallpapers-nature.deb
	git commit -m "chore: remove legacy nature wallpapers package"

	git add v2-ada-lovelace/pool/main/z/wallpapers-pragmata.deb
	git commit -m "chore: remove legacy Pragmata wallpapers package"

	git add v2-ada-lovelace/pool/main/z/zycamera-launcher.deb
	git commit -m "chore: remove legacy ZyCamera launcher package"

	git add v2-ada-lovelace/pool/main/z/zylearn.deb
	git commit -m "chore: remove legacy ZyLearn package"

	git add v2-ada-lovelace/pool/main/z/zyphor-cli.deb
	git commit -m "chore: remove legacy Zyphor CLI package"

	git add v2-ada-lovelace/pool/main/z/zyphor-command-center-web.deb
	git commit -m "chore: remove legacy Command Center web package"

	git add v2-ada-lovelace/pool/main/z/zyphor-command-center.deb
	git commit -m "chore: remove legacy Command Center package"

	git add v2-ada-lovelace/pool/main/z/zyphor-display-mac-v1.deb
	git commit -m "chore: remove legacy display theme package"

	git add v2-ada-lovelace/pool/main/z/zyphor-os-release.deb
	git commit -m "chore: remove legacy OS release package"

	git add v2-ada-lovelace/pool/main/z/zyphor-repo-config.deb
	git commit -m "chore: remove legacy repository config package"

	git add v2-ada-lovelace/pool/main/z/zyphor-updates.deb
	git commit -m "chore: remove legacy updates package"

	git add v2-ada-lovelace/pool/main/z/zyphor-whats-new.deb
	git commit -m "chore: remove legacy What's New package"

	git add v2-ada-lovelace/pool/main/z/zysh.deb
	git commit -m "chore: remove legacy Zysh package"

	git add v2-ada-lovelace/pool/main/z/zyshell.deb
	git commit -m "chore: remove legacy Zyshell package"

	git add v2-ada-lovelace/pool/main/z/zywin-ui.deb
	git commit -m "chore: remove legacy ZyWin UI package"

	git add v2-ada-lovelace/pool/main/z/zywin.deb
	git commit -m "chore: remove legacy ZyWin package"

	git add v2-ada-lovelace/registry/registry.json
	git commit -m "chore: remove legacy package registry"
pret:
	sh prettify ada-lovelace-lts/registry/registry.json

min:
	sh minify ada-lovelace-lts/registry/registry.json
