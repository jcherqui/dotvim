let g:syntastic_check_on_open=1
let g:syntastic_enable_signs=1
let g:syntastic_javascript_checkers=['eslint']
let g:syntastic_yaml_checkers = ['yamllint']
let g:jsx_ext_required = 0 " Allow JSX in normal JS files"
let g:syntastic_javascript_eslint_exec='`npm bin`/eslint' " Use local ESLint by default
