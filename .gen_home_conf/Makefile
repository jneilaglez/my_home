main:
	@echo "This script creates/deletes the following symbolic links in your home folder: "
	@echo ""
	@echo "    Data -> /mnt/Data/"
	@echo "    Descargas -> /mnt/Data/Descargas/"
	@echo "    Documentos -> /mnt/Data/Documentos/"
	@echo "    Imagenes -> /mnt/Data/Imagenes/"
	@echo "    Imagenes -> /mnt/Data/Libros/"
	@echo "    Musica -> /mnt/Data/Musica/"
	@echo "    Publico -> /mnt/Data/Publico/"
	@echo "    Video -> /mnt/Data/Video/"
	@echo ""

gen-user-dir: main
	@read -p "Do you want to create the links? [y/n]: " answer ; \
		if [ "$$answer" == "y" ] && [ -d /mnt/Data ]; then \
			echo "Generating directory structure..." ; \
			if [ ! -d /mnt/Data/Descargas ]; then mkdir /mnt/Data/Descargas ; fi ; \
			if [ ! -d /mnt/Data/Documentos ]; then mkdir /mnt/Data/Documentos ; fi ; \
			if [ ! -d /mnt/Data/Imagenes ]; then mkdir /mnt/Data/Imagenes ; fi ; \
			if [ ! -d /mnt/Data/Libros ]; then mkdir /mnt/Data/Libros ; fi ; \
			if [ ! -d /mnt/Data/Musica ]; then mkdir /mnt/Data/Musica ; fi ; \
			if [ ! -d /mnt/Data/Publico ]; then mkdir /mnt/Data/Publico ; fi ; \
			if [ ! -d /mnt/Data/Videos ]; then mkdir /mnt/Data/Videos ; fi ; \
			echo "Done" ; \
			echo "Creating links..." ; \
			if [ ! -h ~/Data ]; then ln -s /mnt/Data/ ~/Data ; fi ; \
			if [ ! -h ~/Descargas ]; then ln -s /mnt/Data/Descargas/ ~/Descargas ; fi ; \
			if [ ! -h ~/Documentos ]; then ln -s /mnt/Data/Documentos/ ~/Documentos ; fi ; \
			if [ ! -h ~/Imagenes ]; then ln -s /mnt/Data/Imagenes/ ~/Imagenes ; fi ; \
			if [ ! -h ~/Libros ]; then ln -s /mnt/Data/Libros/ ~/Libros ; fi ; \
			if [ ! -h ~/Musica ]; then ln -s /mnt/Data/Musica/ ~/Musica ; fi ; \
			if [ ! -h ~/Publico ]; then ln -s /mnt/Data/Publico/ ~/Publico ; fi ; \
			if [ ! -h ~/Videos ]; then ln -s /mnt/Data/Videos/ ~/Videos ; fi ; \
			echo "Done" ; \
		else \
			echo "Aborted" ; \
		fi

gen-git-config:
	@if [ -f ~/.gitconfig ]; then read -p "File exist, Would you like to overwrite it? [y/n]: " answer ; fi ; \
		if [ "$$answer" == "y" ]; then \
			read -p "What user do you like to add in global git configuration (~/.gitconfig)?: " user ; \
			read -p "What email do you like to add in global git configuration (~/.gitconfig): " email ; \
			read -p "What editor do you like to add in global git configuration (~/.gitconfig): " editor ; \
			echo "" ; \
			if $$(which git > /dev/null 2>&1) && $$(which $$editor > /dev/null 2>&1); then \
				if [[ $$user =~ ^[A-Za-z[:space:]áéíñóúüÁÉÍÑÓÚÜ]*$$ && $$user != "" \
					 && $$email =~  ^[a-z0-9,!$#\$%&$'\*\+/=\?\^_\`\{\|}~-]+(\.[a-z0-9,!$#\$%&$'\*\+/=\?\^_\`\{\|}~-]+)*@[a-z0-9-]+(\.[a-z0-9-]+)*\.([a-z]{2,})$$ && $$email != "" \
					 ]]; then \
					echo "Configuring global username for git... " ; \
					echo "git config --global user.name $"$$user" ; \
					git config --global user.name "$$user" ; \
					echo "git config --global user.email $"$$email" ; \
					git config --global user.email $$email ; \
					echo "git config --global core.editor $"$$editor" ; \
					git config --global core.editor $$editor ; \
					echo "Done" ; \
				else \
					echo "User and email cannot be empty and they have to be in the next format:" ; \
					echo "    User: only Spanish characters and blank spaces, ej - Jhon Doé" ; \
					echo "    Email: <characters, numbers and other special chars>@<characters and numbers>.<characters, min length 2. ej - io>" ; \
					echo "Aborted" ; \
				fi \
			else \
				echo "User and email cannot be empty" ; \
				echo "You must install git and $$([[ $$editor == "" ]] && echo $$editor | echo "your favourite editor") for this process" ; \
				echo "Aborted" ; \
			fi \
		else \
				echo "Aborted" ; \
		fi
	@read -p "Would you like to configure pretty log graph for git? [y/n]: " answer ; \
		if [ "$$answer" == "y" ]; then \
			echo "Configuring pretty git log graph..." ; \
			git config --global alias.log-graph "log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold cyan)%aD%C(reset) %C(bold green)(%ar)%C(reset)%C(bold yellow)%d%C(reset)%n''          %C(white)%s%C(reset) %C(dim white)- %C(reset)%C(bold magenta)[%an] %C(reset)' --all" ; \
		else \
			echo "Aborted" ; \
		fi

clean: main
	@read -p "Do you want to delete the links? [y/n]: " answer ; \
		if [ "$$answer" == "y" ]; then \
			echo "Deleting links..." ; \
			if [ -h ~/Data ]; then rm ~/Data ; fi ; \
			if [ -h ~/Descargas ]; then rm ~/Descargas ; fi ; \
			if [ -h ~/Documentos ];then rm ~/Documentos ; fi ; \
			if [ -h ~/Imagenes ]; then rm ~/Imagenes ; fi ; \
			if [ -h ~/Libros ]; then rm ~/Libros ; fi ; \
			if [ -h ~/Musica ]; then rm ~/Musica ; fi ; \
			if [ -h ~/Publico ]; then rm ~/Publico ; fi ;\
			if [ -h ~/Videos ]; then rm ~/Videos ; fi ;\
			echo "Done" ; \
		else \
			echo "Aborted" ; \
		fi

