set nocompatible
set termguicolors
let configs = [
            \"settings",
            \"mappings",
            \"leader",
            \"functions",
            \"commands",
            \"autocmds",
            \"plugins",
            \"plugin-settings",
            \"ui"
            \]
"putting ui last because of calls to colorschemes that are plugins

for file in configs
    let x = expand("$HOME/.config/nvim/".file.".vim")
    if filereadable(x)
        execute 'source' x
    endif
endfor
