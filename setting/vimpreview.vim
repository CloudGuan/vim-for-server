" vim preview 设置 设置几个快捷键

autocmd FileType qf nnoremap <silent><buffer> p :PreviewQuickfix<cr>
autocmd FileType qf nnoremap <silent><buffer> P :PreviewClose<cr>
noremap <Leader>u :PreviewScroll -1<cr>  "往上滚动预览窗口
noremap <leader>d :PreviewScroll +1<cr>  "往下滚动预览窗口
