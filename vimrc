set nocompatible

call pathogen#infect() " Pathogen Activation

" Import config files
let g:vimDir = $HOME.'/.vim'
exec ":source ".g:vimDir.'/config/setting.vim'
exec ":source ".g:vimDir.'/config/ack.vim'
exec ":source ".g:vimDir.'/config/ctrlp.vim'
exec ":source ".g:vimDir.'/config/instantmarkdown.vim'
exec ":source ".g:vimDir.'/config/jsbeautify.vim'
exec ":source ".g:vimDir.'/config/lustyexplorer.vim'
exec ":source ".g:vimDir.'/config/nerdtree.vim'
exec ":source ".g:vimDir.'/config/powerline.vim'
exec ":source ".g:vimDir.'/config/syntastic.vim'
exec ":source ".g:vimDir.'/config/ultisnips.vim'
exec ":source ".g:vimDir.'/config/vimmove.vim'
exec ":source ".g:vimDir.'/config/youcompleteme.vim'

" user configuration
let s:userConfig = g:vimDir.'/local.vim'
if filereadable(s:userConfig)
   exec ":source ".s:userConfig
endif
