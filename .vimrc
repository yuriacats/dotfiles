
"XMLするフレームワーク系のシンタックスの拡張"
au BufRead,BufNewFile *.vue set filetype=html
" 行番号を表示"
set number 
"折りたたみ機能"
au FileType vim setlocal foldmethod=marker
set scrolloff=3
set tabstop=4
set autoindent
set expandtab
set tabstop=2
set shiftwidth=2
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
Plug 'othree/yajs.vim'            " es6のハイライト"
Plug 'mattn/emmet-vim'
Plug 'mxw/vim-jsx'                " jsxのハイライト"
Plug 'mattn/emmet-vim'  
Plug 'hail2u/vim-css3-syntax'     
Plug 'udalov/kotlin-vim'
Plug 'scrooloose/nerdtree'        "vimの:eコマンド押したときのツリー"
Plug 'dpelle/vim-LanguageTool'
call plug#end()

