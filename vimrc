set nocompatible

" Activation de pathogen
call pathogen#infect()

" MAP leader
let mapleader = ","

" -- Affichage
set title                 " Met a jour le titre de votre fenetre ou de votre terminal
set number                " Affiche le numero des lignes
set ruler                 " Affiche la position actuelle du curseur
set wrap                  " Affiche les lignes trop longues sur plusieurs lignes
set scrolloff=3           " Affiche un minimum de 3 lignes autour du curseur (pour le scroll)

" -- Recherche
set ignorecase            " Ignore la casse lors d'une recherche
set smartcase             " Si une recherche contient une majuscule, re-active la sensibilite a la casse
set incsearch             " Surligne les resultats de recherche pendant la saisie
set hlsearch              " Surligne les resultats de recherche

" -- Beep
set visualbell            " Empeche Vim de beeper
set noerrorbells          " Empeche Vim de beeper
set t_vb=
set noeb
set novb
set vb t_vb=

" Cache les fichiers lors de l'ouverture d'autres fichiers
set hidden

" Tabulation to space
set expandtab
set tabstop=4
set shiftwidth=4

" Active la coloration syntaxique
syntax enable

" Theme monochrome
set t_Co=256
colorscheme monochrome

" Debug markdown colorscheme
autocmd BufNewFile,BufReadPost *.md set filetype=markdown

" Active les comportements specifiques aux types de fichiers comme la syntaxe et l’indentation
filetype on
filetype plugin on
filetype indent on

" Hardcore mode
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>

" Parametres par defaut pour ack
let g:ackprg="ack -H --nocolor --nogroup --column"
" Place un marqueur et cherche
nmap <leader>j mA:Ack<space>
" Place un marqueur et cherche le mot sous le curseur
nmap <leader>ja mA:Ack "<C-r>=expand("<cword>")<cr>"
nmap <leader>jA mA:Ack "<C-r>=expand("<cWORD>")<cr>"

" Ctrlp
let g:ctrlp_map = '<leader>p'
nmap <Leader>m :CtrlPBufTag<CR>
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'
let g:ctrlp_show_hidden = 1

" Viminfo
set viminfo="NONE"

" Copy to the clipboard -- need +xterm-clipboard
nmap <Leader>y "+y<CR>

" Dockerfile
au BufNewFile Dockerfile r ~/.vim/templates/Dockerfile.txt

" Instant markdown plugin
let g:instant_markdown_autostart = 0

" paste toogle
set pastetoggle=<F10>

" syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0

" Javascript config
let g:syntastic_javascript_checkers = ['eslint']
let g:jsx_ext_required = 0 " Allow JSX in normal JS files"

" Warning
let g:LustyExplorerSuppressRubyWarning = 1

" Allow saving of files as sudo when I forgot to start vim using sudo.
cmap w!! w !sudo tee > /dev/null %

" Spell checking
set spelllang=fr
nmap <silent> <leader>s :set spell!<CR>

" CSS autocomplete (ctrl-x ctrl-o)
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType scss set omnifunc=csscomplete#CompleteCSS

" Disable mouse
set mouse-=a

" Nerdtree
nmap <silent> <leader>k :NERDTreeToggle<cr>

" Reload vim config
nmap <silent> <leader>sv :so $MYVIMRC<CR>

" Shift lines and selections faster with vim-move
let g:move_map_keys = 0
vmap <C-j> <Plug>MoveBlockDown
vmap <C-k> <Plug>MoveBlockUp
nmap <A-j> <Plug>MoveLineDown

