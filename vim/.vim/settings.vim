"contains settings changes (i.e. set foo)

" Set 'nocompatible' to ward off unexpected things that your distro might
" have made, as well as sanely reset options when re-sourcing .vimrc
set nocompatible

set hidden " like crazy important

set wildmenu " better command-line completion. Need to take a look at it

set showcmd " * shows partial command in last line of screen (like way bottom right)

set incsearch "show search results while typing
set hlsearch  "highlight search results :nohls to turn off highlight
set ignorecase "case insensitive search, except when using capitals
set smartcase

"set cursorline "would be cool if it didnt have such a shit highlight color

set backspace=indent,eol,start "less restricted backspacing

set autoindent

" Stop certain movements from always going to the first character of a line.
" While this behaviour deviates from that of Vi, it does what most users
" coming from other editors would expect.
set nostartofline "need to check this one

set ruler "display cursor position in statusline
set laststatus=2 "always display statusline

set confirm    "ask about saving changes to file
set visualbell "flash instead of beep when doing something wrong
set t_vb=      "along with visualbell -> no flash or beep 

set mouse=a "enable mouse for all modes

set cmdheight=2 " * set command window height to 2 lines, to avoid many cases of having to press <Enter> to continue

set number "line numbers, looks really cool with 

set notimeout ttimeout ttimeoutlen=200 " * Quickly time out on keycodes, but never time out on mappings

set pastetoggle=<F11> "use <F11> to toggle btwn paste and nopaste

set wrap " set line wrapping
set linebreak " need to try this with code. was good enough with .md files
" try setting something so that it works with a little indent on wrap
"
set switchbuf=usetab "sbuff trys to find existing window or tab of buffer first
set splitright "vsplit open to the right
set splitbelow "hsplits open below

"indentation
" Indentation settings for using 4 spaces instead of tabs.
" Do not change 'tabstop' from its default value of 8 with this setup.
set shiftround "rounds indent to multiple of 'shiftwidth'
set shiftwidth=4 
set softtabstop=4
set expandtab    " * pretty sure this is the change tab to spaces one

set noshowmode "lightline requirement I believe. Maybe should go in a plugin file?
