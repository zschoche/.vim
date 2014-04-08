all:
	ln -s ~/.vim/vimrc  ~/.vimrc 
	git submodule update --init --recursive
	vim +PluginInstall +qall
	cd ./bundle/YouCompleteMe; ./install.sh --clang-completer; cd -
	ln -s ~/.vim/.ycm_extra_conf.py ~/.ycm_extra_conf.py

