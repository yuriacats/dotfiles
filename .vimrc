"XMLするフレームワーク系のシンタックスの拡張"
au BufRead,BufNewFile *.vue set filetype=html
" 行番号を表示"
colorscheme molokai
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
let mapleader = "\<Space>"
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
autocmd BufNewFile,BufRead \*.{md,mdwn,mkd,mkdn,mark\*} set filetype=markdown
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
Plug 'plasticboy/vim-markdown'
Plug 'previm/previm'
Plug 'tfnico/vim-gradle'
Plug 'tyru/open-browser.vim'
Plug 'twitvim/twitvim'
Plug 'mattn/webapi-vim'
call plug#end()
let g:previm_open_cmd = 'open -a Google\ Chrome'
au BufRead,BufNewFile *.md set filetype=markdown
""let g:user_emmet_leader_key='<C-s>'
"" let g:user_emmet_settings=webapi#json#decode(join(readfile(expand('~/dotfiles/base.json')),'\n'))
autocmd VimEnter * execute 'NERDTree'

let twitvim_browser_cmd = 'open' " for Mac
let twitvim_force_ssl = 1 
let twitvim_count = 40

function! s:findtweet(timer)
   FriendsTwitter 
endfunction


command! StartTweet call timer_start(100000 ,function("s:findtweet") ,{ "repeat" : -1 })
command! StopTweet call timer_stop(function("s:findtweet")
