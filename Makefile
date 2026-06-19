add:
	git add dists/stable/main/binary-amd64/Packages
	git commit -m "chore: updated Packages index"

	git add dists/stable/main/binary-amd64/Packages.gz
	git commit -m "chore: updated compressed Packages index"

	git add pool/main/z/zyphor-os-release.deb
	git commit -m "chore: updated zyphor-os-release package"

	git add pool/main/z/zyphor-whats-new.deb
	git commit -m "chore: updated zyphor-whats-new package"

	git add pool/main/z/zysh.deb
	git commit -m "chore: updated zysh package"