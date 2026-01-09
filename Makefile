all: dist

dist/advanced-colonies.mrpack:
	mkdir -p dist
	./bin/pakku fetch
	./bin/pakku export
	mv "build/modrinth/Advanced Colonies-2.0.mrpack" "dist/advanced-colonies.mrpack"

dist: dist/advanced-colonies.mrpack

clean:
	rm -rf build dist

.PHONY: all build clean
