#Organization
My .vimrc is broken up into a few different files to make them easier to edit as I dive deeper into my vim configuration.
- settings.vim: just settings (`set thing`)
- commands.vim: commands
- leader.vim: `<leader>` key mappings
- mappings.vim: key mappings
- plugins.vim: source all my plugins
- plugin-settings.vim: plugin specific settings minus colorschemes 
- ui.vim: syntax and colorschemes

# Just a 'lil cheatsheet

##search and replace
- the whole file
 - `:1,$s/pattern1/pattern2/g`

##Word Processing Mode
- :WP to start
- `lz=` to call spell checker
- use `/` and `?` to your advantage here
 - i.e. `d?` and `d/` to change until the next occurence of a pattern
- `dt.` to delete to the end of a sentence (or next '.')
- `diw` to delete the current word and `3diw` to delete in the current word and the next two words
