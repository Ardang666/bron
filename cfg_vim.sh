export pwd=${PWD}
pushd ${pwd}
	sudo apt install -y vim vim-scripts vim-gtk vim-gnome

	# vundle
	git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
	# YCM
	# https://www.v2ex.com/t/341751
	sudo apt install -y llvm-3.9 clang-3.9 libclang-3.9-dev libboost-all-dev
	sudo apt install -y cmake
	git clone --recursive https://github.com/Valloric/YouCompleteMe.git ~/.vim/bundle/YouCompleteMe && \
	 cd ~/.vim/bundle/YouCompleteMe && \
	 git submodule update --init --recursive

	mkdir ~/.ycm_build
	cd ~/.ycm_build

	cmake -G "Unix Makefiles" -DUSE_SYSTEM_BOOST=ON -DEXTERNAL_LIBCLANG_PATH=/usr/lib/x86_64-linux-gnu/libclang-3.9.so . ~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp
	cmake --build . --target ycm_core --config Release
	cp ~/.vim/bundle/YouCompleteMe/third_party/ycmd/examples/.ycm_extra_conf.py ~/.vim/
	rm ~/.ycm_build -rf

	# ctags
	sudo apt -y install exuberant-ctags

	# cscope
	sudo apt -y install cscope

	# powerline
	sudo apt -y install powerline
	mkdir -p ~/tmp/powerline
	cd ~/tmp/powerline
	wget https://github.com/powerline/powerline/raw/develop/font/PowerlineSymbols.otf
	wget https://github.com/powerline/powerline/raw/develop/font/10-powerline-symbols.conf
	mv PowerlineSymbols.otf ~/.local/share/fonts/
	fc-cache -vf ~/.local/share/fonts/
	mv 10-powerline-symbols.conf ~/.config/fontconfig/conf.d/
	cd ~

	mv ~/.vimrc ~/.vimrc.bak.$DATA
	mv ~/.vimself ~/.vimself.bak
popd 

cp .vimrc ~
cp -r .vimself ~

rm ~/tmp -rf
