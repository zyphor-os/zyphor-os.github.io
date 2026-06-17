add:
	git add dists/stable/main/binary-amd64/Packages
	git commit -m "chore: updated Packages index"

	git add dists/stable/main/binary-amd64/Packages.gz
	git commit -m "chore: updated Packages.gz index"

	git add pool/main/z/zyphor-command-center.deb
	git commit -m "chore: updated zyphor-command-center package"

	git add pool/main/z/zyphor-os-release.deb
	git commit -m "chore: updated zyphor-os-release package"

	git add pool/main/z/zyphor-updates.deb
	git commit -m "chore: updated zyphor-updates package"

	git add pool/main/z/zyphor-whats-new.deb
	git commit -m "chore: updated zyphor-whats-new package"

	git add pool/main/z/zysh.deb
	git commit -m "feat: added zysh package"