set nocompatible
filetype off
let &runtimepath.=',~/.vim/bundle/ale'
filetype plugin on

" let g:ale_linters = { 'javascript': ['eslint'], 'sh': ['shellcheck'] }
let g:ale_echo_msg_format = '[%linter%] %s'
nnoremap <leader>an :ALENextWrap<cr>
nnoremap <leader>ap :ALEPreviousWrap<cr>

highlight clear ALEErrorSign
highlight clear ALEWarningSign

let g:ale_lint_on_text_changed = 'never'
