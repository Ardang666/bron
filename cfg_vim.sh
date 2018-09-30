sudo apt install vim vim-scripts vim-gtk vim-gnome

# vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
# YCM
# https://www.v2ex.com/t/341751
sudo apt install llvm-3.9 clang-3.9 libclang-3.9-dev libboost-all-dev
sudo apt install cmake
#git clone --recursive https://github.com/Valloric/YouCompleteMe.git && git submodule update --init --recursive

mkdir ~/.ycm_build
cd ~/.ycm_build

cmake -G "Unix Makefiles" -DUSE_SYSTEM_BOOST=ON -DEXTERNAL_LIBCLANG_PATH=/usr/lib/x86_64-linux-gnu/libclang-3.9.so . ~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp
cmake --build . --target ycm_core --config Release
cp ~/.vim/bundle/YouCompleteMe/third_party/ycmd/examples/.ycm_extra_conf.py ~/.vim/
rm ~/.ycm_build -rf

# ctags
# https://www.cnblogs.com/zjutzz/p/9393397.html
sudo apt install autoconf
cd /tmp
git clone https://github.com/universal-ctags/ctags
cd ctags
./autogen.sh
./configure --prefix=/opt/software/universal-ctags  # 我的安装路径。你按自己的情况调整。
make -j8
sudo make install

sudo ln -s /opt/software/universal-ctags/bin/ctags /usr/bin/ctags

# cscope
sudo apt install cscope

# powerline
sudo apt install powerline
wget https://github.com/powerline/powerline/raw/develop/font/PowerlineSymbols.otf
wget https://github.com/powerline/powerline/raw/develop/font/10-powerline-symbols.conf
mv PowerlineSymbols.otf ~/.local/share/fonts/
fc-cache -vf ~/.local/share/fonts/
mv 10-powerline-symbols.conf ~/.config/fontconfig/conf.d/

cp ~/.vimrc ~/.vimrc.bak.$DATA
cp ~/.vimrc.base ~/.vimrc.base.bak.$DATA
cp ~/.vimrc.vundels ~/.vimrc.vundels.bak.$DATA

cp .vimrc ~/.vimrc
cp .vimrc.base ~/.vimrc.base
cp .vimrc.vundles ~/.vimrc.vundles

