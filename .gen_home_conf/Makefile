RED="\e[1;31m"
NONE="\e[0m"

define git_config
	@read -p "Creating/Overwriting git $(1) configuration, Would you like to create/overwrite it? [y/n]: " answer ; \
		if [ "$$answer" == "y" ]; then \
			read -p "What user do you like to add in local git configuration?: " user ; \
			read -p "What email do you like to add in local git configuration?: " email ; \
			read -p "What editor do you like to add in local git configuration?: " editor ; \
			echo "" ; \
			if $$(which git > /dev/null 2>&1) && $$(which $$editor > /dev/null 2>&1); then \
				if [[ $$user =~ ^[A-Za-z[:space:]áéíñóúüÁÉÍÑÓÚÜ]*$$ && $$user != "" \
					 && $$email =~  ^[a-z0-9,!$#\$%&$'\*\+/=\?\^_\`\{\|}~-]+(\.[a-z0-9,!$#\$%&$'\*\+/=\?\^_\`\{\|}~-]+)*@[a-z0-9-]+(\.[a-z0-9-]+)*\.([a-z]{2,})$$ && $$email != "" \
					 ]]; then \
					echo "Configuring $(1) username for git... " ; \
					echo "git config --$(1) user.name $"$$user" ; \
					git config --$(1) user.name "$$user" ; \
					echo "git config --$(1) user.email $"$$email" ; \
					git config --$(1) user.email $$email ; \
					echo "git config --$(1) core.editor $"$$editor" ; \
					git config --$(1) core.editor $$editor ; \
					echo "Done" ; \
				else \
					echo -e ""${RED}"User and email have to be in the next format:" ; \
					echo -e "    User: only Spanish characters and blank spaces, ej - Jhon Doé" ; \
					echo -e "    Email: <characters, numbers and other special chars>@<characters and numbers>.<characters, min length 2. ej - io>, ej - myhome@myhome.io" ; \
					echo -e "Aborted"${NONE}"" ; \
				fi \
			else \
				echo -e ""${RED}"User and email cannot be empty" ; \
				echo -e "You must install git and $$([[ $$editor == "" ]] && echo $$editor | echo "your favourite editor") for this process" ; \
				echo -e "Aborted"${NONE}"" ; \
			fi \
		else \
			echo -e ""${RED}"Aborted"${NONE}"" ; \
		fi
endef


main:
	@echo "This script creates/deletes the following symbolic links in your home folder: "
	@echo ""
	@echo "    Data -> /mnt/Data/"
	@echo "    Descargas -> /mnt/Data/Descargas/"
	@echo "    Documentos -> /mnt/Data/Documentos/"
	@echo "    Imágenes -> /mnt/Data/Imágenes/"
	@echo "    Imágenes -> /mnt/Data/Libros/"
	@echo "    Música -> /mnt/Data/Música/"
	@echo "    Público -> /mnt/Data/Público/"
	@echo "    Videos -> /mnt/Data/Vídeos/"
	@echo ""

gen-user-dir: main
	@read -p "Do you want to create the links? [y/n]: " answer ; \
		if [ "$$answer" == "y" ] && [ -d /mnt/Data ]; then \
			echo "Generating directory structure..." ; \
			if [ ! -d /mnt/Data/Descargas ]; then mkdir /mnt/Data/Descargas ; fi ; \
			if [ ! -d /mnt/Data/Documentos ]; then mkdir /mnt/Data/Documentos ; fi ; \
			if [ ! -d /mnt/Data/Imágenes ]; then mkdir /mnt/Data/Imágenes ; fi ; \
			if [ ! -d /mnt/Data/Libros ]; then mkdir /mnt/Data/Libros ; fi ; \
			if [ ! -d /mnt/Data/Música ]; then mkdir /mnt/Data/Música ; fi ; \
			if [ ! -d /mnt/Data/Público ]; then mkdir /mnt/Data/Público ; fi ; \
			if [ ! -d /mnt/Data/Vídeos ]; then mkdir /mnt/Data/Vídeos ; fi ; \
			echo "Done" ; \
			echo "Creating links..." ; \
			if [ ! -h ~/Data ]; then ln -s /mnt/Data/ ~/Data ; fi ; \
			if [ ! -h ~/Descargas ]; then ln -s /mnt/Data/Descargas/ ~/Descargas ; fi ; \
			if [ ! -h ~/Documentos ]; then ln -s /mnt/Data/Documentos/ ~/Documentos ; fi ; \
			if [ ! -h ~/Imágenes ]; then ln -s /mnt/Data/Imágenes/ ~/Imágenes ; fi ; \
			if [ ! -h ~/Libros ]; then ln -s /mnt/Data/Libros/ ~/Libros ; fi ; \
			if [ ! -h ~/Música ]; then ln -s /mnt/Data/Música/ ~/Música ; fi ; \
			if [ ! -h ~/Público ]; then ln -s /mnt/Data/Público/ ~/Público ; fi ; \
			if [ ! -h ~/Vídeos ]; then ln -s /mnt/Data/Vídeos/ ~/Vídeos ; fi ; \
			echo "Done" ; \
		else \
			echo -e ""${RED}"Aborted"${NONE}"" ; \
		fi

gen-git-config-global:
	@$(call git_config,global)
	@read -p "Would you like to configure pretty log graph for git? [y/n]: " answer ; \
		if [ "$$answer" == "y" ]; then \
			echo "Configuring pretty git log graph..." ; \
			git config --global alias.log-graph "log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold cyan)%aD%C(reset) %C(bold green)(%ar)%C(reset)%C(bold yellow)%d%C(reset)%n''          %C(white)%s%C(reset) %C(dim white)- %C(reset)%C(bold magenta)[%an] %C(reset)' --all" ; \
			echo "Done" ; \
		else \
			echo -e ""${RED}"Aborted"${NONE}"" ; \
		fi

gen-git-config-local:
	$(call git_config,local)

clean: main
	@read -p "Do you want to delete the links? [y/n]: " answer ; \
		if [ "$$answer" == "y" ]; then \
			echo "Deleting links..." ; \
			if [ -h ~/Data ]; then rm ~/Data ; fi ; \
			if [ -h ~/Descargas ]; then rm ~/Descargas ; fi ; \
			if [ -h ~/Documentos ];then rm ~/Documentos ; fi ; \
			if [ -h ~/Imágenes ]; then rm ~/Imágenes ; fi ; \
			if [ -h ~/Libros ]; then rm ~/Libros ; fi ; \
			if [ -h ~/Música ]; then rm ~/Música ; fi ; \
			if [ -h ~/Público ]; then rm ~/Público ; fi ;\
			if [ -h ~/Vídeos ]; then rm ~/Vídeos ; fi ;\
			echo "Done" ; \
		else \
			echo -e ""${RED}"Aborted"${NONE}"" ; \
		fi

