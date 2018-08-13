command! PT call functions#PlainText()

command! WP call functions#WordProcessorMode()

" convert markdown files to latex with pandoc
command! Convert !pandoc -s -f markdown -t latex % -o %:r.tex
