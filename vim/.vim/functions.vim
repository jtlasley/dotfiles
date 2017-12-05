"These two functions are currently competeing. Plain Text is probably gonna
"win
"
" from https://github.com/wincent/wincent/blob/master/roles/dotfiles/files/.vim/autoload/wincent/functions.vim
function! PlainText() abort
  if has('conceal')
    let b:indentLine_ConcealOptionSet=1 " Don't let indentLine overwrite us.
    setlocal concealcursor=nc
  endif
  setlocal linebreak "don't break in a word
  setlocal nonumber
  setlocal nolist
  setlocal spell spelllang=en_us
  setlocal textwidth=0
  setlocal wrap
  setlocal wrapmargin=0
  
  setlocal formatprg=par

  nnoremap <buffer> j gj
  nnoremap <buffer> k gk

"  map <localleader>s f. 

  " Ideally would keep 'list' set, and restrict 'listchars' to just show
  " whitespace errors, but 'listchars' is global and I don't want to go through
  " the hassle of saving and restoring.
  if has('autocmd')
    autocmd BufWinEnter <buffer> match Error /\s\+$/
    autocmd InsertEnter <buffer> match Error /\s\+\%#\@<!$/
    autocmd InsertLeave <buffer> match Error /\s\+$/
    autocmd BufWinLeave <buffer> call clearmatches()
  endif
endfunction

"This is based on www.drbunsen.org/writing-in-vim/
"
function! WordProcessorMode()
    setlocal formatoptions=1
    setlocal noexpandtab
    map j gj
    map k gk
    setlocal spell spelllang=en_us
    "set thesaurus+=/Users/sbrown/.vim/thesaurus/mthesaur.txt
    set complete+=s
    set formatprg=par
"    setlocal textwidth=80
    setlocal wrap
    setlocal linebreak
endfu

function! ToggleLineNum()
    " if number is set,
    "     setlocal nonumber
    " else
    "     setlocal number
endfunction
