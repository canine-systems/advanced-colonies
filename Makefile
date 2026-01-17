all: dist

dist/advanced-colonies.mrpack: .downloads/pakku.jar config/** mods/** pakku.json pakku-lock.json
	mkdir -p dist
	./bin/pakku fetch
	./bin/pakku export
	mv "build/modrinth/Advanced Colonies-2.0.mrpack" "dist/advanced-colonies.mrpack"

.downloads/pakku.jar:
	./bin/update-pakku.sh

dist: dist/advanced-colonies.mrpack

clean:
	rm -rf build dist

.PHONY: all build clean
