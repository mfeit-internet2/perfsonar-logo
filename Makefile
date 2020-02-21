#
# Makefile for perfSONAR Logo
#

default: build

NAME=perfsonar-logo


BUILD_DIR=$(NAME)
$(BUILD_DIR): $(MAKEFILE) build-logo parts.xslt \
	parts.svg parts-text.svg parts-icon.svg
	rm -rf "$@"
	mkdir -p $(BUILD_DIR)
	./build-logo "$(BUILD_DIR)"
TO_CLEAN += $(BUILD_DIR)


$(NAME).tar.gz: $(BUILD_DIR)
	tar czf "$@" "$<"
TO_CLEAN += $(NAME).tar.gz

$(NAME).zip: $(BUILD_DIR)
	zip -q -r "$@" "$<"
TO_CLEAN += $(NAME).zip


build: $(NAME).tar.gz $(NAME).zip


clean:
	rm -rf $(TO_CLEAN) *~
