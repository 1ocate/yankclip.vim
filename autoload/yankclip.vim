
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
    autocmd TextYankPost * :call yankclip#push()
end

function! yankclip#toggle()
    let g:os_clipboard_enble = ! g:os_clipboard_enble
    echom "Yank to OS clipboard " . g:os_clipboard_enble
    "let s:clip = ''
endfunction


function! yankclip#push()
        if ! v:true == g:os_clipboard_enble
            return
        endif
        let s:reg0= substitute(@0, '\n', '','')
        if has("wsl")
            call system('echo '.shellescape(s:reg0).' | '.s:clip)
        endif
        let @+ = expand(@0)
        return
endfunction

