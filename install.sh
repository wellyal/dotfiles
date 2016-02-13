#!/usr/bin/env bash

for f in $(find ~/dotfiles/* -maxdepth 0 -type f -not -name "install.sh" -not -name "LICENSE" -not -name "README.md")
do
	rm -f "$HOME/.${f##*/}"
	ln -s "$f" "$HOME/.${f##*/}"
done

rm -rf "$HOME/.oh-my-zsh"
rm -rf "$HOME/.fluxbox"
rm -rf "$HOME/.backup"
mkdir "$HOME/.backup"
ln -s "$HOME/dotfiles/oh-my-zsh" "$HOME/.oh-my-zsh"
ln -s "$HOME/dotfiles/fluxbox" "$HOME/.fluxbox"

vim +PluginInstall +qall

# rodar este comando para definir o zsh como default
#chsh -s /bin/zsh
