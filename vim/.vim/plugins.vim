"Vundle
filetype off 

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle,
Plugin 'VundleVim/Vundle.vim'

" file explorer
Plugin 'scrooloose/nerdtree'

" Java autocompletion
"Plugin 'artur-shaik/vim-javacomplete2'

" surround.vim
Plugin 'tpope/vim-surround'

" lightline.vim
Plugin 'itchyny/lightline.vim'

" colorizer
Plugin 'lilydjwg/colorizer'

" sourcerer color scheme
Plugin 'xero/sourcerer.vim'

" base-16 vim themes
Plugin 'chriskempson/base16-vim'

"Xresources color scheme
Plugin 'hickop/vim-terminal-colors'

" Add all plugins before the following line
call vundle#end()
filetype plugin indent on

