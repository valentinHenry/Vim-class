" Builtin plugins
runtime ftplugin/man.vim " Man pages

" Basic config
syntax on
set list listchars=trail:·,tab:⎈⎈,eol:¬
set number
set cursorline
set cc=79
set mouse=a
set breakindent
inoremap jj <ESC>
set encoding=utf-8 fileencodings=

" Split related
set splitright
set splitbelow
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-l> <c-w>l
nnoremap <c-h> <c-w>h

" Increment / Tabs related
set smarttab
set smartindent
set expandtab
set shiftwidth=3
set tabstop=3

" Movements
nnoremap j gj
nnoremap k gk

" Trailing whitespace removal
autocmd BufWritePre * %s/\s\+$//e

" Makefile
autocmd FileType make <buffer> set noexpandtab

" brackets and quotes
inoremap "" ""<left>
inoremap '' ''<left>
inoremap () ()<left>
inoremap [] []<left>
inoremap {} {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O

" Annoying typos / mod removal
map q: <nop>
nnoremap Q <nop>

" C main shortcut
autocmd FileType c inoremap <buffer> main<CR> int main(int argc, char *argv[])<CR>{<CR><CR>}<up><TAB>

" Header creator
function HeaderFuncts()
    let @a = ""
    :%v/static/g/^\a\+ .*(.*)/s/\(.*\)/\1;/
    :%v/static/g/^\a\+ .*(.*);/y A
    u
endfunction

command HeaderFunc exec HeaderFuncts()

" Make and QuickFixList shortcut
function MakeFunc()
    :copen
    :w | make
endfunction

command Make exec MakeFunc ()
