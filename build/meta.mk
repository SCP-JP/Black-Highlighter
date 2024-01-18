# Variables
BUILD_SOURCES := \
	$(wildcard build/*)

# Directory creation
DIRECTORIES := \
	dist/css/ \
	dist/css/min/ \
	dist/css/parts/ \
	dist/fonts/ \
	dist/fonts/int \
	dist/fonts/int/japanese \
	dist/img/ \
	dist/img/page-toolbar-icons \
	dist/img/text-editor-icons \
	dist/img/social-icons \
	dist/stable/styles/

$(DIRECTORIES):
	mkdir -p $@

# bun rules
node_modules: package.json bun.lockb
	bun install
