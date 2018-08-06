set nocompatible
set termguicolors

"Vundle
filetype off 

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle,
Plugin 'VundleVim/Vundle.vim'

" file explorer
Plugin 'scrooloose/nerdtree'

" Java autocompletion
Plugin 'artur-shaik/vim-javacomplete2'

" PHP specific
" new php filetype
Plugin 'StanAngeloff/php.vim'
" php indentation plugin
Plugin '2072/PHP-Indenting-for-VIm'

" Some LaTeX plugins
Plugin 'xuhdev/vim-latex-live-preview'

" Shows indentation levels
Plugin 'Yggdroot/indentLine'

" surround.vim
Plugin 'tpope/vim-surround'

" repeat.vim
Plugin 'tpope/vim-repeat'

" lightline.vim
Plugin 'itchyny/lightline.vim'

" colorizer
Plugin 'lilydjwg/colorizer'

" vim indentation guide
Plugin 'nathanaelkane/vim-indent-guides'

" sourcerer color scheme
Plugin 'xero/sourcerer.vim'

" wal plugin
Plugin 'dylanaraps/wal.vim'

" base-16 vim themes
Plugin 'chriskempson/base16-vim'

" gruvbox colorscheme
Plugin 'morhetz/gruvbox'

"Xresources color scheme
Plugin 'hickop/vim-terminal-colors'

" For tmux split switching
Plugin 'christoomey/vim-tmux-navigator'

" For cool markdown highlighting
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'

" Add all plugins before the following line
call vundle#end()
filetype plugin indent on

