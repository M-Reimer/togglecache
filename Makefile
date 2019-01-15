# -*- Mode: Makefile -*-
#
# Makefile for Toggle Cache
#

FILES = manifest.json \
        background.js \
        $(wildcard _locales/*/messages.json) \
        $(wildcard icons/*.svg)

togglecache-trunk.xpi: $(FILES) icons/togglecache-light.svg
	@zip -9 - $^ > $@

icons/togglecache-light.svg: icons/togglecache.svg
	@sed 's/:#0c0c0d/:#f9f9fa/g' $^ > $@

clean:
	rm -f togglecache-trunk.xpi
	rm -f icons/togglecache-light.svg
