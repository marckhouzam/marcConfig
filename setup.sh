#!/bin/bash

ln -s $git/marcConfig/aliases $HOME/.aliases
ln -s $git/marcConfig/cshrc $HOME/.cshrc
ln -s $git/marcConfig/lmckhou.rc $HOME/.lmckhou.rc
ln -s $git/marcConfig/login $HOME/.login
ln -s $git/marcConfig/lttng-bash_completion $HOME/.lttng-bash_completion
ln -s $git/marcConfig/lttng-tcsh_completion $HOME/.lttng-tcsh_completion
ln -s $git/marcConfig/vimrc $HOME/.vimrc

# Zsh setup
git clone https://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions
ln -s $git/marcConfig/zsh/zshrc $HOME/.zshrc
ln -s $git/marcConfig/zsh/aliases.zsh $ZSH_CUSTOM/aliases.zsh
