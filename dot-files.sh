#/bin/bash

#zshrc
#polybar
#i3
#dunstrc
#wallpaper
#urxvt
#lightdm
#easystroke
#

I3CONFIG_DIR="$HOME/.config/i3"
I3CONFIG="$HOME/.config/i3/config"
DUNSTRC_DIR="$HOME/.config/dunst"
DUNSTRC="$HOME/.config/dunst/dunstrc"
ZSHRC="$HOME/.zshrc"
XRESOURCES="$HOME/.Xresources"
POLYBAR_DIR="$HOME/.config/polybar"
POLYBAR="$HOME/.config/polybar/config"
MPV_DIR="$HOME/.config/mpv"
MPV="$HOME/.config/mpv/mpv.conf"
EASYSTROKE="$HOME/.easystroke"

if [ -d "$I3CONFIG_DIR"  ] || [ -d "$I3CONFIG"  ] ; then
	rm -rf "$I3CONFIG_DIR"
fi

if [ -d "$DUNSTRC_DIR"  ] || [ -d "$DUNSTRC"  ] ; then
	rm -rf "$DUNSTRC_DIR"
fi

if [ -d "$ZSHRC"  ] ; then
	rm "$ZSHRC"
fi

if [ -d "$XRESOURCES"  ] ; then
	rm "$XRESOURCES"
fi

if [ -d "$POLYBAR_DIR"  ] || [ -d "$POLYBAR"  ] ; then
	rm -rf "$POLYBAR_DIR"
fi

if [ -d "$MPV_DIR"  ] || [ -d "$MPV"  ] ; then
	rm -rf "$MPV_DIR"
fi

if [ -d "$EASYSTROKE"  ] ; then
	rm -rf "$EASYSTROKE"
fi


mkdir $I3CONFIG_DIR
mkdir $POLYBAR_DIR
mkdir $MPV_DIR
mkdir $DUNSTRC_DIR
ln -s $HOME/dot-files/.i3config $I3CONFIG
ln -s $HOME/dot-files/.dunstrc $DUNSTRC
ln -s $HOME/dot-files/.zshrc $ZSHRC
ln -s $HOME/dot-files/.Xresources $XRESOURCES
ln -s $HOME/dot-files/.mpv $MPV
ln -s $HOME/dot-files/.easystroke $EASYSTROKE
ln -s $HOME/dot-files/.polybar $POLYBAR

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
