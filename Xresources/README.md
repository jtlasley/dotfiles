#Xresources

## How it works

I manage my .Xresources using the "#include" command.
This makes it super easy to manage and change all of my colorschemes

Say I wanted to chaange colors to jsphnskr's paper theme, I would just add to my .Xresources file:
    #include ~/.Xresources.d/colours/jsphsnkr-color-set
    #include ~/.Xresources.d/colours/paper
and remove any other "#include" statements.

All colorschemces stored in .Xresources.d/colours are 5-color schemes from github.com/jsphsnkr, and the ones in .Xresources.d are 16-color schemes.
