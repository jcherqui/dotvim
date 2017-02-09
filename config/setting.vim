" MAP leader
let mapleader = ","

" Hardcore Mode
let g:hardcoreMode = 1

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
au BufNewFile Dockerfile r ~/.vim/templates/Dockerfile.txt

" CSS autocomplete (ctrl-x ctrl-o)
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType scss set omnifunc=csscomplete#CompleteCSS

" Reload vim config
nmap <silent> <leader>sv :so $MYVIMRC<CR>

" Copy to the clipboard -- need +xterm-clipboard
nmap <Leader>y "+y<CR>

set viminfo="NONE"
set hidden
