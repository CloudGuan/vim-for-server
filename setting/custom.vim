"==========================================
" Author:  cloudguan
" Version: 9.1
" Email: rcloudguan@163.com
" Sections:
"       -> Initial Plugin 加载插件
"       -> General Settings 基础设置
"       -> Display Settings 展示/排版等界面格式设置
"       -> FileEncode Settings 文件编码设置
"       -> Others 其它配置
"       -> HotKey Settings  自定义快捷键
"       -> FileType Settings  针对文件类型的设置
"       -> Theme Settings  主题设置
"
"==========================================

"设置leader 按键 
let mapleader=','
let g:mapleader=','

"记住退出位置
if has("autocmd")
	au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

"开启语法高亮
syntax on
"NOTE: 以下配置有详细说明，一些特性不喜欢可以直接注解掉

"==========================================
" General Settings 基础设置
"==========================================

" history存储容量
set history=2000

" 检测文件类型
filetype on
"load plugin with diff file type 
filetype plugin on
" 针对不同的文件类型采用不同的缩进格式
filetype indent on

" backspace 生效
set backspace=eol,start,indent

"ettings 文件编码,格式

" 设置新文件的编码为 UTF-8
set encoding=utf-8
" 自动判断编码时，依次尝试以下编码：
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
set helplang=cn


" 自动换行缩进
set autoindent
set tabstop=4
set softtabstop=4
set shiftwidth=4

"行号  
set number
" 取消换行
set nowrap
" 括号配对情况, 跳转并高亮一下匹配的括号
set showmatch

"配色方案
set background=dark
set t_Co=256
colorscheme gruvbox

"------------------------------------------------------"
"" 设置vim搜索匹配项的颜色
hi Search cterm=NONE ctermfg=yellow ctermbg=NONE gui=NONE guifg=#FFFF00 guibg=NONE
hi IncSearch cterm=NONE ctermfg=yellow ctermbg=NONE gui=NONE guifg=#FFFF00 guibg=NONE
hi QuickFixLine cterm=NONE ctermfg=yellow ctermbg=NONE gui=NONE guifg=#FFFF00 guibg=NONE

" vim tab快捷键 Leader 快速切换tab 插入模式也要可以使用
noremap <M-1> 1gt <cr>
noremap <M-2> 2gt <cr>
noremap <M-3> 3gt <cr>

" 前一个 后一个 tab
noremap <M-p> <esc> :tabp <cr>
noremap <M-n> <esc> :tabn <cr> 
