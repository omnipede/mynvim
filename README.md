# myvim

개인용 nvim 설치, 설정 등.
한번 세팅해봤는데 설치가 번거로워서 안 쓸 것 같다.  
그냥 NvChad 사용하는게 편할 듯.
기록용으로 남겨둠

# Install

## nvim 설치


```sh
# 만약 Neovim이 이미 설치되어 있다면 제거한다.
sudo apt-get remove neovim -y

sudo add-apt-repository ppa:neovim-ppa/stable 
sudo apt-get update -y
sudo apt-get install neovim -y
```

## vim-plug 설치

```sh
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```

## vim 설정 파일 만들기

* `~/.config/nvim/init.vim` 에 [init.vim](./init.vim)내용 붙여넣기

## node.js 설치

CoC 플러그인 설치시 node.js LTS 버전이 필요하다. 설치해주자.

```sh
# node.js 필요
$ curl -sL install-node.now.sh/lts | sudo $SHELL
```

## Nerd font 설치

`vim-devicons` 플러그인을 위해 다음 폰트가 필요하다.

https://www.nerdfonts.com/font-downloads 에서 폰트 파일 다운로드 받고 각자 사용하는 shell 에 적용
shell 마다 폰트 적용 방법이 조금씩 다름 

* iterm2: https://falaner.tistory.com/82
* powershell: https://nahwasa.com/entry/%EA%B0%9C%EB%B0%9C%EC%9E%90-%EC%9C%88%EB%8F%84%EC%9A%B0-%EC%84%B8%ED%8C%85-WSL-%EC%84%9C%EB%B8%8C-%EB%A6%AC%EB%88%85%EC%8A%A4-IntelliJ-vscode-git-%EB%93%B1#Meslo_Nerd_%ED%8F%B0%ED%8A%B8_%EC%84%A4%EC%B9%98

## plugin 설치

nvim 화면에서

```sh
:PlugInstall
```

## LSP 설치

nvim 화면에서 다음 커맨드 입력

```
:CocInstall coc-clangd
```

# 기타 참고 자료

다음 링크를 정말 많이 참고했다.

[neovim 설정 (CoC, vim-plug 등)](https://velog.io/@mythos/Linux-neovim-%EC%84%A4%EC%A0%95-CoC-Vim-Plug-treesitter-NERDTree#4-coc-conquer-of-completion)
