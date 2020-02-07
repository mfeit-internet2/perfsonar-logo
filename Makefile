#
# Makefile for perfSONAR Logo
#

default: build

#
# Plain Logo
#

perfsonar-transparent.svg: perfsonar.svg
	sed -e '/fill:#31b63f/s/fill-opacity:[0-9.]+;/fill-opacity:0.75/g' "$<" > "$@"
TO_CLEAN += perfsonar-transparent.svg

perfsonar-white.svg: perfsonar.svg
	sed -e 's/#000000/#ffffff/g' "$<" > "$@"
TO_CLEAN += perfsonar-white.svg

perfsonar-white-transparent.svg: perfsonar-white.svg
	sed -e '/fill:#31b63f/s/fill-opacity:[0-9.]+;/fill-opacity:0.75/g' "$<" > "$@"
TO_CLEAN += perfsonar-white-transparent.svg


#
# Powered Logo
#

perfsonar-powered-transparent.svg: perfsonar-powered.svg
	sed -e '/fill:#31b63f/s/fill-opacity:[0-9.]+;/fill-opacity:0.75/g' "$<" > "$@"
TO_CLEAN += perfsonar-transparent.svg

perfsonar-powered-white.svg: perfsonar-powered.svg
	sed -e 's/#000000/#ffffff/g' "$<" > "$@"
TO_CLEAN += perfsonar-powered-white.svg

perfsonar-powered-white-transparent.svg: perfsonar-powered-white.svg
	sed -e '/fill:#31b63f/s/fill-opacity:[0-9.]+;/fill-opacity:0.75/g' "$<" > "$@"
TO_CLEAN += perfsonar-powered-white-transparent.svg

build: \
	perfsonar.svg \
	perfsonar-transparent.svg \
	perfsonar-white.svg \
	perfsonar-white-transparent.svg \
	\
	perfsonar-powered.svg \
	perfsonar-powered-transparent.svg \
	perfsonar-powered-white.svg \
	perfsonar-powered-white-transparent.svg

clean:
	rm -rf $(TO_CLEAN) *~
