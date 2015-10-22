Sam's dotfiles
==============

My dotfiles. Probably nothing exciting.

YouCompleteMe
-------------

```
cd ~/.vim/bundle/YouCompleteMe
./install.sh --clang-completer --omnisharp-completer
```

Vundle
------

```
vim +PluginInstall +qall
vim +PluginUpdate +qall
```

Fonts (on Linux)
----------------

You're probably aiming for something like this:

```xrdb -query
*customization:	-color
Xft.antialias:	1
Xft.autohint:	0
Xft.dpi:	96
Xft.hinting:	1
Xft.hintstyle:	hintslight
Xft.lcdfilter:	lcddefault
Xft.rgba:	rgb
```
