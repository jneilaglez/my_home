main:
	@echo "This script creates/deletes the following symbolic links in your home folder: "
	@echo ""
	@echo "    Data -> /mnt/Data/"
	@echo "    Descargas -> /mnt/Descargas/"
	@echo "    Documentos -> /mnt/Data/Documentos/"
	@echo "    Imagenes -> /mnt/Imagenes/"
	@echo "    Musica -> /mnt/Musica/"
	@echo "    Publico -> /mnt/Publico/"
	@echo "    Video -> /mnt/Video/"
	@echo ""

gen-user-dir: main
	@read -p "Do you want to create the links? [y/n]: " answer; \
		if [ $$answer == "y" ] && [ -d /mnt/Data ]; then \
			echo "Generating directory structure..." ; \
			if [ ! -d /mnt/Data/Descargas ]; then mkdir /mnt/Data/Descargas ; fi ; \
			if [ ! -d /mnt/Data/Documentos ]; then mkdir /mnt/Data/Documentos ; fi ; \
			if [ ! -d /mnt/Data/Imagenes ]; then mkdir /mnt/Data/Imagenes ; fi ; \
			if [ ! -d /mnt/Data/Musica ]; then mkdir /mnt/Data/Musica ; fi ; \
			if [ ! -d /mnt/Data/Publico ]; then mkdir /mnt/Data/Publico ; fi ; \
			if [ ! -d /mnt/Data/Videos ]; then mkdir /mnt/Data/Videos ; fi ; \
			echo "Done" ; \
			echo "Creating links..." ; \
			if [ ! -h ~/Data ]; then ln -s /mnt/Data/ ~/Data ; fi ; \
			if [ ! -h ~/Descargas ]; then ln -s /mnt/Data/Descargas/ ~/Descargas ; fi ; \
			if [ ! -h ~/Documentos ]; then ln -s /mnt/Data/Documentos/ ~/Documentos ; fi ; \
			if [ ! -h ~/Imagenes ]; then ln -s /mnt/Data/Imagenes/ ~/Imagenes ; fi ; \
			if [ ! -h ~/Musica ]; then ln -s /mnt/Data/Musica/ ~/Musica ; fi ; \
			if [ ! -h ~/Publico ]; then ln -s /mnt/Data/Publico/ ~/Publico ; fi ; \
			if [ ! -h ~/Videos ]; then ln -s /mnt/Data/Videos/ ~/Videos ; fi ; \
		  echo "Done" ; \
		else \
			echo "Aborted" ; \
		fi

clean: main
	@read -p "Do you want to delete the links? [y/n]: " answer; \
		if [ $$answer == "y" ]; then \
			echo "Deleting links..." ; \
			if [ -h ~/Data ]; then rm ~/Data ; fi ; \
			if [ -h ~/Descargas ]; then rm ~/Descargas ; fi ; \
			if [ -h ~/Documentos ];then rm ~/Documentos ; fi ; \
			if [ -h ~/Imagenes ]; then rm ~/Imagenes ; fi ; \
			if [ -h ~/Musica ]; then rm ~/Musica ; fi ; \
			if [ -h ~/Publico ]; then rm ~/Publico ; fi ;\
			if [ -h ~/Videos ]; then rm ~/Videos ; fi ;\
			echo "Done" ; \
		else \
			echo "Aborted" ; \
		fi
