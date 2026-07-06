#!/usr/bin/env bash

setup_ale() {
    echo "Setting up ALE plugin..."
    mkdir -p ~/.vim/pack/git-plugins/start
    GIT_TERMINAL_PROMPT=0 git clone --depth 1 https://github.com/dense-analysis/ale.git ~/.vim/pack/git-plugins/start/ale
    vim -u NONE -c "helptags ~/.vim/pack/git-plugins/start/ale/doc" -c q
}

setup_vim_ai() {
    echo "Setting up Vim-AI plugin..."
    mkdir -p ~/.vim/pack/git-plugins/start
    GIT_TERMINAL_PROMPT=0 git clone https://github.com/madox2/vim-ai.git ~/.vim/pack/plugins/start/vim-ai
}

setup_vimrc() {
    echo "Setting up vimrc..."
    cp $(dirname "$0")/vimrc ~/.vim/
}

echo "Setting up vim..."

# Install ALE
if [ -d ~/.vim/pack/git-plugins/start/ale ]; then
    read -p "Do you want to remove the existing ALE plugin? [y|n] : " confirm
    if [ "$confirm" == "y" ]; then
        echo "Removing existing ALE plugin..."
        rm -rf ~/.vim/pack/git-plugins/start/ale
        setup_ale
    else
        echo "Leaving existing ALE plugin..."
    fi
else
    setup_ale
fi

# Install Vim-AI
if [ -d ~/.vim/pack/git-plugins/start/vim-ai ]; then
    read -p "Do you want to remove the existing Vim-AI plugin? [y|n] : " confirm
    if [ "$confirm" == "y" ]; then
        echo "Removing existing Vim-AI plugin..."
        rm -rf ~/.vim/pack/git-plugins/start/vim-ai
        setup_ale
    else
        echo "Leaving existing Vim-AI plugin..."
    fi
else
    setup_vim_ai
fi

# Setup vimrc
if [ -f ~/.vim/vimrc ]; then
    read -p "Do you want to overwrite vimrc in ~/.vim? [y|n] : " confirm
    if [ "$confirm" == "y" ]; then
        echo "Backing up old vimrc..."
        mv ~/.vim/vimrc ~/.vim/vimrc_$(date +%Y-%m-%d_%H%M%S)
        setup_vimrc
    else
        echo "Leaving existing vimrc..."
    fi
else
    setup_vimrc
fi

echo "Done!"
