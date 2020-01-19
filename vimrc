"设置python3 的路径这里安装插件的时候有些需要python3支持 
"所以需要放到最前面
let g:python3_host_prog = exepath('python3')
"新的插件管理器 
call plug#begin('~/.vim/plugged')
Plug 'Yggdroot/LeaderF', { 'do': './install.sh' }
Plug 'ludovicchabant/vim-gutentags'  "gtags 管理插件
Plug 'Shougo/defx.nvim'		"文件目录树 非nvim 需要如下三个插件
Plug 'roxma/nvim-yarp'
Plug 'roxma/vim-hug-neovim-rpc'

"初始化 插件管理器
call plug#end()

" 加载自定义配置
source ~/.vim/setting/custom.vim
source ~/.vim/setting/defx.vim