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

