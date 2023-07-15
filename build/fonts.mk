# Variables
FONTS_COPY_SOURCES := $(wildcard src/fonts/* src/fonts/int/japanese/* )
FONTS_COPY_OUTPUTS := $(patsubst src/fonts/%,dist/fonts/%,$(FONTS_COPY_SOURCES))

# Fonts to copy
dist/fonts/%: src/fonts/%
	build/install.sh 644 $< $@

dist/fonts/int/japanese/%: src/fonts/int/japanese/%
	build/install.sh 644 $< $@