DOTIGNORE := .git .gitmodules
ALLFILES := $(wildcard .??*)
DOTFILES := $(filter-out $(DOTIGNORE), $(ALLFILES))
bold = @printf "\e[1m"
reset = @printf "\e[m"


dotfiles: $(foreach file, $(DOTFILES), $(HOME)/$(file))
	$(call bold)
	@echo "=> Created symlink to dotfiles on \$$HOME !"
	$(call reset)

$(HOME)/%: %
	@ln -sv $(abspath $<) $(HOME)/$<


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
	@pushd env
	@sh install.sh
	@popd
	$(call bold)
	@echo "=> Done !"
	$(call reset)


clean:
	@$(foreach file, $(DOTFILES), unlink $(HOME)/$(file);)
	$(call bold)
	@echo "=> All dotfiles has unlinked!"
	$(call reset)
	@echo ""
	@echo "To complete cleaning up my environment, please execute"
	@echo "    cd \$$MDOTDIR/.."
	@echo "    rm -rf dotfiles"
