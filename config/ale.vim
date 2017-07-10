set nocompatible
filetype off
let &runtimepath.=',~/.vim/bundle/ale'
filetype plugin on

let g:ale_echo_msg_format = '[%linter%] %s'
nnoremap <leader>an :ALENextWrap<cr>
nnoremap <leader>ap :ALEPreviousWrap<cr>
