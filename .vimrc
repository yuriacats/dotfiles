"XMLするフレームワーク系のシンタックスの拡張"
au BufRead,BufNewFile *.vue set filetype=html
" 行番号を表示"
set number 
set cursorline
set expandtab
set softtabstop =2
set shiftwidth=2
set smartindent
"検索関連"
set incsearch
set ignorecase
set smartcase
set hlsearch
" ESCキー2度押しでハイライトの切り替え
nnoremap <silent><Esc><Esc> :<C-u>set nohlsearch!<CR>
"念願のタグジャンプだぞ！
set showmatch " 括弧の対応関係を一瞬表示する
source $VIMRUNTIME/macros/matchit.vim " Vimの「%」を拡張する
" コピペのときだけ例のあれ
if &term =~ "xterm"
    let &t_SI .= "\e[?2004h"
    let &t_EI .= "\e[?2004l"
    let &pastetoggle = "\e[201~"

  function XTermPasteBegin(ret)
    set paste
    return a:ret
  endfunction

  inoremap <special> <expr> <Esc>[200~ XTermPasteBegin("")
endif
"折りたたみ機能"
au FileType vim setlocal foldmethod=marker
set scrolloff=3
set tabstop=4
set autoindent
set ambiwidth=double 
" マウスのドラッグをオン"
set ttymouse=xterm2
set directory=/tmp
set directory=~/.vim/tmp
set directory=.
" vim移動の簡略化"
nnoremap sj <C-w>j
nnoremap sk <C-w>k
nnoremap sl <C-w>l
nnoremap sh <C-w>h
inoremap <C-j> <ESC>
" vimのタブ移動"
nnoremap sn gT
nnoremap sm gt
"vim プラグイン導入"
call plug#begin('~/.vim/plugged')
"書き方"
" Plug 'プラグイン名' "
Plug 'bronson/vim-trailing-whitespace'
Plug 'Yggdroot/indentLine'
Plug 'othree/yajs.vim'            " es6のハイライト"
Plug 'tomasr/molokai'
Plug 'mattn/emmet-vim'
Plug 'mxw/vim-jsx'                " jsxのハイライト"
Plug 'mattn/emmet-vim'  
Plug 'hail2u/vim-css3-syntax'     
Plug 'udalov/kotlin-vim'
Plug 'scrooloose/nerdtree'        "vimの:eコマンド押したときのツリー"
Plug 'dpelle/vim-LanguageTool'
Plug 'leafgarland/typescript-vim'
call plug#end()

