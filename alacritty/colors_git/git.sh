#!/bin/sh bash

DEST="eendroroy-colorschemes"

if ! test -d $DEST;
then
	REPO=https://github.com/eendroroy/alacritty-theme.git
	# Get colorschemes
	git clone $REPO $DEST
fi


# Create symlink at default colors location (optional)
LINK_COLORS="$HOME/.config/alacritty/colors"
if test -L $LINK_COLORS; 
then
	rm -rf $LINK_COLORS 
fi

ln -s "colors_git/$DEST/themes" $LINK_COLORS
