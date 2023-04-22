![logo](/images/logo.png)

A dark vim colorscheme, inspired mainly by [vim-two-firewatch](https://github.com/rakr/vim-two-firewatch) but using colors from [apprentice](https://github.com/romainl/Apprentice) and some code from both apprentice and [monokai-tasty](https://github.com/patstockwell/vim-monokai-tasty). All credit for the source code goes to the original authors. I just put it all together in a way that matched what I like and I hope to grow this colorscheme with my own ideas and improvements in the future.

The name is inspired by Brandon Sanderson's awesome book series [Mistborn](https://en.wikipedia.org/wiki/Mistborn)

## Main color palette

| Color name       |Color Code | Color                                                      | Main use              | 
|------------------|---------- |------------------------------------------------------------|-----------------------| 
| Blue             | `#6E88A6` |![#6E88A6](https://placehold.it/100x40/6E88A6/111111?text=+)| Identifiers           |
| Beige            | `#D7AFAF` |![#D7AFAF](https://placehold.it/100x40/D7AFAF/000000?text=+)| Functions             |
| Green            | `#87AF87` |![#87AF87](https://placehold.it/100x40/87AF87/000000?text=+)| Strings and Special   |
| Red              | `#af5f5f` |![#af5f5f](https://placehold.it/100x40/af5f5f/000000?text=+)| Statements            |
| Orange           | `#FF875F` |![#FF875F](https://placehold.it/100x40/FF875F/000000?text=+)| Constants             |
| Purple           | `#875faf` |![#875faf](https://placehold.it/100x40/875faf/000000?text=+)| Types                 |
| Aqua             | `#5fafaf` |![#5fafaf](https://placehold.it/100x40/5fafaf/000000?text=+)| Focus and Highlights  |

## Installation

To install the colorscheme you can either:

1. Use a plugin manager such as [vim-plug](https://github.com/junegunn/vim-plug). 

Add the following to your vimrc and run PlugInstall

    Plug 'foxoman/vim-helix'

2. Manually clone/download the repo and move the file helix.vim to ".vim/colors/"


## Using the colorscheme

Once installed add the following to your .vimrc

    set termguicolors "Remove this in urxvt
    colo helix 

## The colorscheme isn't working?

This is still a work in progress and the colors I use aren't in the 256 xterm colorspace. One "workaround" that I use is to use the matching colorscheme for your terminal so that the colors defined by the cterm calls match the gui ones. Here's an example .Xresources file that you can use. Plug it into [terminal.sexy](terminal.sexy) and export to your terminal's format.

    *.foreground: #abb2bf
    *.background: #282c34

    *.color0:     #282c34
    *.color8:     #55606d

    *.color1:     #e06c75
    *.color9:     #af5f5f

    *.color2:     #87AF87
    *.color10:    #87AF87

    *.color3:     #D7AFAF
    *.color11:    #FF875F

    *.color4:     #6E88A6
    *.color12:    #6E88A6

    *.color5:     #D18EC2
    *.color13:    #875faf

    *.color6:     #5fafaf
    *.color14:    #5fafaf

    *.color7:     #ABB2BF
    *.color15:    #ECEFF4

It's also available in the repo as helix.Xresources.
