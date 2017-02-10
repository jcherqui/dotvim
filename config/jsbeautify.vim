" format selection
autocmd FileType javascript vnoremap <buffer> <c-b> :call RangeJsBeautify()<cr>
autocmd FileType json vnoremap <buffer> <c-b> :call RangeJsonBeautify()<cr>
autocmd FileType html vnoremap <buffer> <c-b> :call RangeHtmlBeautify()<cr>
autocmd FileType css vnoremap <buffer> <c-b> :call RangeCSSBeautify()<cr>

" format the whole file
autocmd FileType javascript nnoremap <buffer> <c-b> :call JsBeautify()<cr>
autocmd FileType json nnoremap <buffer> <c-b> :call JsonBeautify()<cr>
autocmd FileType html nnoremap <buffer> <c-b> :call HtmlBeautify()<cr>
autocmd FileType css nnoremap <buffer> <c-b> :call CSSBeautify()<cr>
