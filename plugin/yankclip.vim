" Title:        yankclip" Description:  yank to OS clipboard
" Last Change:  2022-11-17
" Maintainer:   locate <https://github.com/1ocate>

" Prevents the plugin from being loaded multiple times. If the loaded
" variable exists, do nothing more. Otherwise, assign the loaded
" variable and continue running this instance of the plugin.
if exists("g:loaded_yankclip")
    finish
endif
let g:loaded_yankclip = 1 

" OS Check
if has("mac")
    let s:clip = @+
    let s:flag_able= 1
elseif has("wsl")
    " case WSL find clipboard path
    let s:clip = '/mnt/c/Windows/System32/clip.exe' 
    if executable(s:clip)
        let s:flag_able= 1
    end
end

" Check excutable system clipboard
if  s:flag_able
    autocmd TextYankPost * :call s:push()
end

function! s:toggle()
    let g:os_clipboard_enble = ! g:os_clipboard_enble
    echom "Yank to OS clipboard " . g:os_clipboard_enble
endfunction

function! s:push()
    if ! g:os_clipboard_enble
        return
    endif
    let op = v:event.operator
    if op ==# 'y'
        let s:reg0= substitute(@0, '\n\+$', '','')
        let @+ = s:reg0
        if has("wsl")
            call system('printf %s '.shellescape(s:reg0).' | '.s:clip)
        endif
    else
        return
    endif
endfunction
command -nargs=0 OsYankToggle call s:toggle()
command -nargs=0 OSYank call s:push()
