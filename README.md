# yankclip.vim
yankclip은 WSL과 Mac OS 환경에서 iTerm2, wezterm 등의 터미널에서 vim을 사용할 때 vim의 레지스터 0번이 갱신(yank) 되면 운영체제의 클립보드를 업데이트 해줍니다.

스크롤로 한 화면에 들어오지 않는 모든 코드나 문장을 마우스로 드래그해서 불편하게 복사하지 말고 비주얼 모드로 복사해서 사용해보세요.

* WSL, Mac 환경에서 테스트하였고, 다른 OS 호환여부는 확인하지 못하였습니다.
![yankclip](https://user-images.githubusercontent.com/29521447/202831340-3574ec2f-17dd-4eea-8439-1ffe7ec9b6c9.gif)

## 설치 방법
1. Vundle을 사용한 설치
```vim 
Plugin '1ocate/yankclip'
```
:PluginInstall을 실행

2. vim-plug을 이용한 설치
```vim 
Plug '1ocate/yankclip'
```
:PluginInstall을 실행

3. 수동 설치
플러그인을 Clone후  ~/.vim/plugin 디렉토리에 복사
```bash
git clone https://github.com/1ocate/yankclip.git
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
Yankclip은 다음 요구 사항을 충족해야 합니다.

* Vim 8.2 이상
* `Mac OS X 또는 WSL (Windows Subsystem for Linux)

## 해결되지 않은 이슈 사항
WSL 환경에서 한글을 yank 하는 경우 깨지는 현상이 있습니다. 이것은 Windows Powershell 문제로, Windows 업데이트등을 통해 해결되지 않으면 개선 할 수 없는 문제로 확인 하였습니다.
다만 개선 사항이 있으면 언제든지 알려주세요.

## 참고
[Vim 숫자 레지스터 쉬프터 만들기](https://johngrib.github.io/wiki/vim/numbered-register-shift/)

