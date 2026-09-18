add:
	git add Makefile
	git commit -m "chore: modified Makefile"

	git add -u babbage-lts/
	git commit -m "chore: remove babbage LTS repository"

	git add bethany-lts/
	git commit -m "feat: add bethany LTS repository"

pret:
	sh prettify ada-lovelace-lts/registry/registry.json

min:
	sh minify ada-lovelace-lts/registry/registry.json
