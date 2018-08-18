DOTIGNORE := .git .gitmodules .config
ALLFILES := $(wildcard .??*)
DOTFILES := $(filter-out $(DOTIGNORE), $(ALLFILES))
XDGFILES := $(wildcard .config/??*)
XDG_CONFIG_HOME ?= "$(HOME)/.config"
bold = @printf "\e[1m"
reset = @printf "\e[m"


_dotfiles: $(foreach file, $(DOTFILES), $(HOME)/$(file))
	$(call bold)
	@echo "=> Created symlink to dotfiles on \$$HOME !"
	$(call reset)

$(HOME)/%: %
	@ln -sv $(abspath $<) $(HOME)/$<


_xdgfiles: $(foreach file, $(XDGFILES), $(XDG_CONFIG_HOME)/$(file))
	$(call bold)
	@echo "=> Created symlink to dotfiles on \$$XDG_CONFIG_HOME !"
	$(call reset)

$(XDG_CONFIG_HOME)/%: %
	@mkdir -p $(XDG_CONFIG_HOME)
	@ln -sv $(abspath $<) $(XDG_CONFIG_HOME)/$(notdir $<)

dotfiles: _dotfiles _xdgfiles


environment: dotfiles
	$(call bold)
	@echo "=> Downloading plugin manager..."
	$(call reset)
	@git submodule init
	@git submodule update
	$(call bold)
	@echo "=> Done !"
	$(call reset)


all: environment
	$(call bold)
	@echo "=> Install Plugins \$$HOME !"
	$(call reset)
	@sh env/install.sh
	$(call bold)
	@echo "=> Done !"
	$(call reset)


clean:
	@$(foreach file, $(DOTFILES), unlink $(HOME)/$(file);)
	@$(foreach file, $(XDGFILES), unlink $(XDG_CONFIG_HOME)/$(notdir $(file));)
	$(call bold)
	@echo "=> All dotfiles has unlinked!"
	$(call reset)
	@echo ""
	@echo "To complete cleaning up my environment, please execute"
	@echo "    cd \$$MDOTDIR/.."
	@echo "    rm -rf dotfiles"
