" Plug-In 시작 (플러그인 설치 경로)
call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'nanotech/jellybeans.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'ryanoasis/vim-devicons'
Plug 'nvim-tree/nvim-web-devicons'
Plug 'romgrk/barbar.nvim'

" 플러그인 시스템 초기화
call plug#end()

" 컬러 스킴
colorscheme jellybeans

set nu
set mouse=a " 모든 마우스 기능을 사용
set showmatch
set encoding=UTF-8
set autoindent
set cindent
set smartindent
set tabstop=4
set shiftwidth=4
set showmatch " 괄호 하이라이트
set clipboard=unnamedplus
set showtabline=2 " 상단 탭라인 설정

if has("syntax")
        syntax on
endif

" open NERDTree automatically
" https://github.com/josethz00/neovim-like-vscode/blob/main/init.vim
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * NERDTree
let NERDTreeShowHidden=1

" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" use <tab> to trigger completion and navigate to the next complete item
function! CheckBackspace() abort
        let col = col('.') - 1
        return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <silent><expr> <Tab>
        \ coc#pum#visible() ? coc#pum#next(1) :
        \ CheckBackspace() ? "\<Tab>" :
        \ coc#refresh()