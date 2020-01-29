" Ctrl - p 打开搜索功能

" 这段设置酌情注释 这个是根据 https://www.v2ex.com/t/561549 配置
" need gtags

" config project root path, only auto gene gtags file while have followed dir
" .git .svn .hg 
"let g:Lf_RootMarkers=['.git','.hg','.svn']
let g:Lf_GtagsAutoGenerate=1

let g:Lf_Gtagsconf = '/usr/local/share/gtags/gtags.conf'  
let g:Lf_Gtagslabel = 'native-pygments'

" find file in project
let g:Lf_ShortcutF = '<c-p>'

"查找当前文件的函数列表
noremap <Leader>p :LeaderfFunction<cr>

"find gtags select refrence
noremap <leader>fu :<C-U><C-R>=printf("Leaderf! gtags -r %s --auto-jump", expand("<cword>"))<CR><CR>

"find gtags select define
noremap <leader>fd :<C-U><C-R>=printf("Leaderf! gtags -d %s ", expand("<cword>"))<CR><CR>

noremap <F8> <esc> :Leaderf gtags --update <cr>
