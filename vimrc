"设置python3 的路径这里安装插件的时候有些需要python3支持 
"所以需要放到最前面
let g:python3_host_prog = exepath('python3')
"新的插件管理器 
call plug#begin('~/.vim/plugged')
Plug 'Yggdroot/LeaderF', { 'do': './install.sh' }
Plug 'morhetz/gruvbox' "我喜欢的一个主题
Plug 'Shougo/defx.nvim'		"文件目录树 非nvim 需要如下三个插件
Plug 'roxma/nvim-yarp'
Plug 'roxma/vim-hug-neovim-rpc'

Plug 'ludovicchabant/vim-gutentags'  "gtags 管理插件
Plug 'skywind3000/gutentags_plus' "增强扩展 主要是用于解决 gtags 自己使用的数据库的卡顿问题
Plug 'skywind3000/vim-preview' "预览 quickfix 窗口 ctrl-w z 关闭

"初始化 插件管理器
call plug#end()

" 加载自定义配置
source ~/.vim/setting/custom.vim
source ~/.vim/setting/defx.vim
source ~/.vim/setting/gtags.vim
source ~/.vim/setting/gutentags.vim
source ~/.vim/setting/vimpreview.vim
source ~/.vim/setting/leaderf.vim
