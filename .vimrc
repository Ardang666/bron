set nocompatible              " be iMproved, required

if filereadable(expand("~/.vimself/vimrc.vundles.plg"))
  source ~/.vimself/vimrc.vundles.plg
endif

if filereadable(expand("~/.vimself/vimrc.base"))
  source ~/.vimself/vimrc.base
endif

if filereadable(expand("~/.vimself/vimrc.keybanding"))
  source ~/.vimself/vimrc.keybanding
endif

if filereadable(expand("~/.vimself/vimrc.vundles.cfg"))
  source ~/.vimself/vimrc.vundles.cfg
endif
