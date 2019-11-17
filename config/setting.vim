" MAP leader
let mapleader = ","

" Hardcore Mode
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>

" Disable Beep
set visualbell
set noerrorbells
set t_vb=
set noeb
set novb
set vb t_vb=

" Tabulation
set expandtab
set tabstop=4
set shiftwidth=4

" Color syntax
syntax enable

" Theme
set t_Co=256
colorscheme monochrome

" Display
set wrap        " Wrap mode
set scrolloff=3 " Display 3 lines around cursor
set number      " Display line numbers

" Search
set ignorecase  " Ignore Case
set smartcase   " If a search contains a capital letter, case is re-enabled
set incsearch   " Highlights search results while typing
set hlsearch    " Highlights search results

" Filetype behavior
filetype on
filetype plugin on
filetype indent on

" Debug markdown colorscheme
autocmd BufNewFile,BufReadPost *.md set filetype=markdown

" Disable mouse
set mouse-=a

" Spell checking
set spelllang=fr
nmap <silent> <leader>s :set spell!<CR>

" Paste toogle
set pastetoggle=<F10>

" Allow saving of files as sudo when I forgot to start vim using sudo.
cmap w!! w !sudo tee > /dev/null %

" Templates
au BufNewFile Dockerfile r ~/.vim/templates/Dockerfile
au BufNewFile README.md r ~/.vim/templates/README.md
au BufNewFile index.html r ~/.vim/templates/index.html
au BufNewFile makefile r ~/.vim/templates/makefile

" CSS autocomplete (ctrl-x ctrl-o)
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType scss set omnifunc=csscomplete#CompleteCSS

" Reload vim config
nmap <silent> <leader>sv :so $MYVIMRC<CR>

" Copy to the clipboard -- need +xterm-clipboard (install gvim)
nmap <Leader>y "+y<CR>
set clipboard=unnamed,unnamedplus

" Toogle comment
noremap <c-_> :call NERDComment(0, "Toggle")<cr>

" Disable .viminfo file
set viminfo="NONE"

" Toogle number
nnoremap <c-b> :set invnumber<cr>

" Case sensitive
nnoremap / /\c
nnoremap ? ?\c

set hidden

noremap  C "*C
noremap  c "*c
vnoremap C "*C
vnoremap c "*c
