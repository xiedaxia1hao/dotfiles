"----------------------------------------------------
"            __     ___           ____   ____       -
"            \ \   / (_)_ __ ___ |  _ \ / ___|      -
"             \ \ / /| | '_ ` _ \| |_) | |          -
"              \ V / | | | | | | |  _ <| |___       -
"               \_/  |_|_| |_| |_|_| \_\\____|      -
"                                                   -
"----------------GENERATED-BY-FIGLET-----------------
"
"--------------[ STANDARD VIMRC ]----------------
" MAINTAINER: Hang <hangxiee@gmail.com>
" Enviroment: MacOS Sierra / Raspbian / Ubuntu
" -----------------------------------------------

" Get Full path of ~, e.g., /home/ubuntu
let $HOME = expand('~')
let $DOTFILES = expand('~') . '/dotfiles'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                        VIM-PLUG MANAGER FOR PLUGINS                        "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" https://github.com/junegunn/vim-plug
if !filereadable(expand('~/.vim/autoload/plug.vim'))
    echo 'Downlading vim-plug manager...'
    let url='https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
    call system('curl -fLo ~/.vim/autoload/plug.vim --create-dirs ' . url)
    echo 'Done.'
endif
call plug#begin('~/.vim/plugged')
    "{Common}
        if has('nvim')
            source ~/dotfiles/vim/plugmodules/nvim_provider.vim  "IMPORTANT!
        endif
    "{UI}
        source ~/dotfiles/vim/plugmodules/nerdtree.vim
        source ~/dotfiles/vim/plugmodules/semshi.vim
    "{Completion | Usages | Definitions}
        source ~/dotfiles/vim/plugmodules/deoplete.vim
        source ~/dotfiles/vim/plugmodules/ctags.vim
    "{Git}
    "{Python}
        source ~/dotfiles/vim/plugmodules/jedi.vim
call plug#end()


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                         GENERAL BUILT-IN SETTINGS                          "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set number "Show line number
