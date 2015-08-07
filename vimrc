set nocompatible

" Activation de pathogen
call pathogen#infect()

" -- Affichage
set title                 " Met a jour le titre de votre fenetre ou de
                          " votre terminal
set number                " Affiche le numero des lignes
set ruler                 " Affiche la position actuelle du curseur
set wrap                  " Affiche les lignes trop longues sur plusieurs
                          " lignes

set scrolloff=3           " Affiche un minimum de 3 lignes autour du curseur
                          " (pour le scroll)

" -- Recherche
set ignorecase            " Ignore la casse lors d'une recherche
set smartcase             " Si une recherche contient une majuscule,
                          " re-active la sensibilite a la casse
set incsearch             " Surligne les resultats de recherche pendant la
                          " saisie
set hlsearch              " Surligne les resultats de recherche

" -- Beep
set visualbell            " Empeche Vim de beeper
set noerrorbells          " Empeche Vim de beeper
set t_vb=
set noeb
set novb
set vb t_vb=

" Active le comportement 'habituel' de la touche retour en arriere
set backspace=indent,eol,start

" Cache les fichiers lors de l'ouverture d'autres fichiers
set hidden

" Active la coloration syntaxique
syntax enable

" Theme monochrome
colorscheme monochrome

" Debug markdown colorscheme
autocmd BufNewFile,BufReadPost *.md set filetype=markdown

" Active les comportements specifiques aux types de fichiers comme
" la syntaxe et l’indentation
filetype on
filetype plugin on
filetype indent on

" Activation de NERDTree au lancement de vim
" autocmd vimenter * NERDTree

" Desactiver les touches directionnelles
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>

" Les ; sont rarement utilises l’un a la suite de l’autre
" :imap ;; <Esc>
" :map ;; <Esc>

" MAP leader
let mapleader = ","

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
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn|class)$'

" Viminfo
set viminfo="NONE"

" Copy to the clipboard -- need +xterm-clipboard
nmap <Leader>y "+y<CR>

" Dockerfile
au BufNewFile Dockerfile r ~/.vim/templates/Dockerfile.txt

" Instant markdown plugin
let g:instant_markdown_autostart = 0

" Scroll mouse
" set mouse=a
" map <ScrollWheelUp> <C-Y>
" map <ScrollWheelDown> <C-E>

" paste toogle
set pastetoggle=<F10>

" ultisnips
" let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

" syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0

" YouCompleteMe
let g:ycm_key_list_select_completion=['<c-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<c-p>', '<Up>']
