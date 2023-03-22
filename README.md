# yankclip.vim

yankclip은 WSL과 Mac OS 환경에서 iTerm2, wezterm 등의 터미널에서 vim을 사용할 때 yank 명령을 통한 코드 복사를 하게 되면, 운영체제의 클립보드를 자동으로 업데이트 해주는 플러그인 입니다. 

이를 통해 스크롤로 한 화면에 들어오지 않는 모든 코드나 문장을 마우스로 드래그하여 불편하게 복사하지 않고, 비주얼 모드로 쉽게 복사하여 사용할 수 있습니다.


![yankclip](https://user-images.githubusercontent.com/29521447/202831340-3574ec2f-17dd-4eea-8439-1ffe7ec9b6c9.gif)



## 설치 방법
1. Vundle을 사용한 설치
```vim 
Plugin '1ocate/yankclip.vim'
```
:PluginInstall을 실행

2. vim-plug을 이용한 설치
```vim 
Plug '1ocate/yankclip.vim'
```
:PluginInstall을 실행

3. 수동 설치
플러그인을 Clone후  ~/.vim/plugin 디렉토리에 복사
```bash
git clone https://github.com/1ocate/yankclip.vim.git
cp yankclip/plugin/yankclip.vim ~/.vim/plugin/
```



## 설정
```vim

"플러그인 활성화 여부 0: 비활성 1: 활성
let g:os_clipboard_enble = 0

"단축키 설정 
nnoremap <F9> :OsYankToggle <CR>

```

##  요구 사항

* Vim 8.2 이상
* Mac OS X 또는 WSL (Windows Subsystem for Linux)

## 참고
[Vim 숫자 레지스터 쉬프터 만들기](https://johngrib.github.io/wiki/vim/numbered-register-shift/)

