sudo apt install -y automake libevent-dev libncurses5-dev
git clone https://github.com/tmux/tmux.git github_tmux
cd github_tmux
sh autogen.sh
./configure && make
sudo make install
