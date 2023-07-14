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

# pnpm rules
node_modules: package.json pnpm-lock.yaml
	pnpm install
	touch node_modules
