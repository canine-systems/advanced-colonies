all: dist

dist/advanced-colonies.mrpack: .downloads/pakku.jar config/* config/*/* mods
	mkdir -p dist
	./bin/pakku export
	mv "build/modrinth/Advanced Colonies-2.0.mrpack" "dist/advanced-colonies.mrpack"

mods: .downloads/pakku.jar pakku.json pakku-lock.json
	./bin/pakku fetch
	touch mods # make mods/ newer than pakku.json.

.downloads/pakku.jar:
	./bin/update-pakku.sh

dist: dist/advanced-colonies.mrpack

clean:
	rm -rf build dist

veryclean: clean
	rm -rf .downloads/ mods/

.PHONY: all build clean
