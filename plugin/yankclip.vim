" Title:        yankclip
" Description:  yank to OS clipboard
" Last Change:  2022-11-17
" Maintainer:   locate <https://github.com/1ocate>

" Prevents the plugin from being loaded multiple times. If the loaded
" variable exists, do nothing more. Otherwise, assign the loaded
" variable and continue running this instance of the plugin.
if exists("g:loaded_yankclip")
    finish
endif
let g:loaded_yankclip = 1

command -nargs=0 OsYankToggle call yankclip#toggle()
command -nargs=0 OSYank call yankclip#push()
