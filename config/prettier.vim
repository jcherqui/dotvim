let g:prettier#config#tab_width = 4
let g:prettier#config#bracket_spacing = 'true'
let g:prettier#exec_cmd_async = 1
let g:prettier#config#print_width = 200
let g:prettier#config#space_before_function_paren = 'true'
let g:prettier#config#spaceBeforeFunctionParen = 'true'

" Auto Save
" let g:prettier#autoformat = 0
" autocmd BufWritePre *.js,*.json,*.css,*.scss,*.less,*.graphql PrettierAsync

nmap <silent> <leader>F :Prettier<CR>
