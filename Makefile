NAME = To-Do
ICON = ./icon.icns
CSS = ./main.css

NBIN = nativefier
PLATFORM  = darwin
ARCH = x64

folder = $(NAME)-$(PLATFORM)-$(ARCH)
app = $(folder)/$(NAME).app
lowername = $(shell echo $(NAME) | tr A-Z a-z)

ifeq (, $(shell which $(NBIN)))
 $(error "No $(NBIN) in $(PATH). Please see https://github.com/jiahaog/nativefier for instructions")
 endif

.PHONY: install clean reset uninstall run

$(app):
	$(NBIN) --name $(NAME) --icon $(ICON) --platform $(PLATFORM) --arch $(ARCH) --counter --single-instance --inject ./main.css --disable-context-menu --internal-urls ".*?" "https://to-do.office.com/login"

install: $(app) uninstall
	cp -R ./$(NAME)*/$(NAME).app ~/Applications/

clean:
	-rm -rf ./$(folder)

reset: clean uninstall
	-rm -rf ~/Library/Application\ Support/$(lowername)-nativefier-*

uninstall:
	rm -rf ~/Applications/$(NAME).app

run:
	open ~/Applications/$(NAME).app
