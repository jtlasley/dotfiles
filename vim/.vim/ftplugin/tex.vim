" let ';;' also work as escape 
inoremap ;; <ESC> 
" start an italics section
nnoremap <leader>i i\texit{}<ESC><CR> 
"start an inline code section
nnoremap <leader>c a{}<ESC>i\tt
"start a verbatim section
nnoremap <leader>v i\begin{verbatim}<CR>\end{verbatim}<ESC>O<ESC>
" start an enumerate section
nnoremap <leader>e i\begin{enumerate}<CR>\end{enumerate}<ESC>O<ESC>
