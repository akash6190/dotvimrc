call pathogen#infect()
set nocompatible

filetype on
filetype indent on
filetype plugin on
let mapleader = ","
"set foldmethod=syntax
set ignorecase
set hlsearch
set autoindent
set fileencoding=utf-8
set encoding=utf-8
set backspace=indent,eol,start
set ts=2 sts=2 sw=2 expandtab

syntax on
set smartcase
set gdefault
set incsearch
set showmatch

set winwidth=84
set winheight=5
set winminheight=5
set winheight=999

set nolist
set guifont=Lucida_Sans_Typewriter:h10:cANSI
set number
set noswapfile
set visualbell

set cc=80
set background=dark
colorscheme solarized

" Use :w!! to save with sudo if you are editing a eadonly file
cmap w!! w !sudo tee % >/dev/null
"related to html indents
let g:html_indent_inctags = "html,body,head,tbody"
let g:html_indent_script1 = "inc"
let g:html_indent_style1 = "inc"

au BufWritePost *.coffee silent CoffeeMake! -b | cwindow 

" CSS-type things
au BufRead,BufNewFile,BufWrite {*.less} set ft=css

" Markdown
au BufRead,BufNewFile,BufWrite {*.markdown,*.md,*.mdk} set ft=markdown
au BufRead,BufNewFile,BufWrite {*.textile} set ft=textile

" Property lists
au BufRead,BufNewFile,BufWrite {*.plist} set ft=xml

" JavaScript
au BufRead,BufNewFile,BufWrite {*.js.asp,*.json} set ft=javascript

if has("win32")
  " Use CUA keystrokes for clipboard: CTRL-X, CTRL-C, CTRL-V and CTRL-z
  source $VIMRUNTIME/mswin.vim
  "set guifont=Consolas:h13:cANSI,Anonymous\ Pro:h13:cANSI
endif

if has("gui_running")
  " No menus and no toolbar
  set guioptions-=m
  set guioptions-=T

  " Left handed scrollbar
  set guioptions-=r
  set guioptions+=l

  set co=80
  set lines=45
endif

"The following lines for CtrlP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
