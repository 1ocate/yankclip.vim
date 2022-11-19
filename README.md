# yankclip.vim
![yankclip](https://user-images.githubusercontent.com/29521447/202831340-3574ec2f-17dd-4eea-8439-1ffe7ec9b6c9.gif)

yankclip은 WSL과 Mac OS 환경에서 iTerm2, wezterm 등의 터미널에서 vim을 사용할 때 vim의 레지스터 0번이 갱신(yank) 되면 운영체제의 클립보드를 업데이트 해줍니다.

스크롤로 한 화면에 들어오지 않는 모든 코드나 문장을 마우스로 드래그하지 비주얼 모드로 복사해서 사용해보세요.

# setting
```vim

"플러그인 활성화 여부 0: 비활성 1: 활성
let g:os_clipboard_enble = 0

"단축키 설정 
nnoremap <F9> :OsYankToggle <CR>

```
# 참고
[Vim 숫자 레지스터 쉬프터 만들기](https://johngrib.github.io/wiki/vim/numbered-register-shift/)

