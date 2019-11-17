let NERDTreeShowHidden = 1
let g:nerdtree_tabs_open_on_console_startup = 1
let g:NERDTreeIgnore = ['\.swp$', '\~$']
nnoremap <c-n> :NERDTreeToggle<cr>

function! OpenNerdTree()
    let s:exclude = ['COMMIT_EDITMSG', 'MERGE_MSG']
    if index(s:exclude, expand('%:t')) < 0
        NERDTree
        exec "normal! \<c-w>\<c-w>"
    endif
endfunction
autocmd VimEnter * call OpenNerdTree()

autocmd BufEnter * lcd %:p:h
