" ycm config 

" 重新定义快捷键 防止和输入法冲突 
let g:ycm_add_preview_to_completeopt = 0
let g:ycm_show_diagnostics_ui = 0
let g:ycm_server_log_level = 'info'
let g:ycm_min_num_identifier_candidate_chars = 2
let g:ycm_collect_identifiers_from_comments_and_strings = 1
let g:ycm_complete_in_strings=1
let g:ycm_key_invoke_completion = '<c-z>'
set completeopt=menu,menuone

noremap <c-z> <NOP>

let g:ycm_semantic_triggers =  {
			\ 'c,cpp,python,java,go,erlang,perl': ['re!\w{2}'],
			\ 'cs,lua,javascript': ['re!\w{2}'],
			\ }

" 白名单 只有下面结尾的文件文件才会开始分析，方式打开一个文件 ycm 分析半天
" 我基本只会用vim来些 shell python go he c++ 所以开的白名单
" 可以根据自己需求开黑名单
let g:ycm_filetype_whitelist = {
			\ "c":1,
			\ "cpp":1,
			\ "objc":1,
            \ "go":1,
            \ "py":1,
			\ "sh":1,
			\ "zsh":1,
			\ "zimbu":1,
			\ }

let g:ycm_global_ycm_extra_conf= '~/.vim/.ycm_extra_conf.py'
