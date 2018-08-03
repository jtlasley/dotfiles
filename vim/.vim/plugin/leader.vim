"nothing here just yet
"i don't have any leader mappings, but space is gonna be my thing
let mapleader = "\<Space>"

map <leader>s f.

map <leader>o :only<CR>
map <leader>q :close<CR>

map <leader>h :set hls!<CR>

nnoremap <silent> <leader>m :execute (exists('g:loaded_matchparen') ? 'No' : 'Do') . 'MatchParen'<CR>
