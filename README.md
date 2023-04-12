# myvim

개인용 nvim 설치, 설정 등.
한번 세팅해봤는데 설치가 번거로워서 안 쓸 것 같다.  
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

## Coc plugin 을 위한 node.js 설치

```sh
# node.js 필요
$ curl -sL install-node.now.sh/lts | sudo $SHELL
```

## Nerd font 설치

`vim-devicons` 플러그인을 위해 다음 폰트가 필요하다.

https://www.nerdfonts.com/font-downloads 에서 폰트 파일 다운로드 받고 각자 사용하는 shell 에 적용

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