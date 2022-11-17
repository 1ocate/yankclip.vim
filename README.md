# yankclip.vim
yankclip은 WSL과 Mac OS 환경에서 iTerm2, wezterm 등의 터미널에서 vim을 사용할 때 vim의 레지스터 0번이 갱신되면 운영체제의 클립보드를 업데이트 해줍니다.

# setting
```vim

"플러그인 활성화 여부 0: 비활성 1: 활성
let g:os_clipboard_enble = 0

"단축키 설정 
nnoremap <F9> :OsYankToggle <CR>

```


