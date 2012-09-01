" +----------------------------------------------------------------------------+
"
"                               Author: Wayde Tse
"                                Email: waydetse@gmail.com
"                              Website: http://waydetse.github.com
"                        Last Modified: 2012-08-31 21:07:54
"
" +----------------------------------------------------------------------------+

"encode
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=ucs-bom,utf-8,chinese

language message zh_CN.UTF-8
set ambiwidth=double

syntax on

set guioptions=

colorscheme molokai

set guifont=YaHei_Consolas_Hybrid:h9

set backspace=2

set autoindent
set smartindent

"tab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

set number
set ruler

"search
set incsearch
set hlsearch

set nocompatible

set laststatus=2
set cursorline

"list
set list
set listchars=tab:>\ ,

set autoread

"indent
nmap <Tab> v>
nmap <S-Tab> v<
vmap <Tab> >gv
vmap <S-Tab> <gv

"utf-8 nobomb
map <C-S> <Esc>:set fenc=utf-8<CR>:set nobomb<CR>:w<CR>
map! <C-S> <Esc>:set fenc=utf-8<CR>:set nobomb<CR>:w<CR>

"modified time
autocmd BufWritePre,FileWritePre *.{txt,html,md,css,js},*vimrc
\ call LastModified()
function LastModified()
    execute "g/Last [Mm]odified:/s/Last [Mm]odified:.*/Last Modified".
    \ strftime(": %Y-%m-%d %H:%M:%S")
endfunction
