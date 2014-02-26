DESTDIR=$(HOME)

ALL_FILES=$(wildcard *)
FILTERED_FILES=$(filter-out Makefile README.md,$(ALL_FILES))
FILES=$(addprefix $(DESTDIR)/., $(FILTERED_FILES))

install: $(FILES)
	@echo All done

$(FILES):
	@echo linking $@
	@ln -s $(SRC) $@
$(FILES): SRC = $(abspath $(subst $(DESTDIR)/.,, $@))

