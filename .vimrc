" Plugins manage
call plug#begin('~/.vim/plugged') 
Plug 'easymotion/vim-easymotion'
Plug 'preservim/nerdtree'
Plug 'tpope/vim-surround'
Plug 'terryma/vim-multiple-cursors'
Plug 'mg979/vim-visual-multi'
Plug 'tpope/vim-commentary'
Plug 'vim-scripts/ReplaceWithRegister'
Plug 'vim-scripts/argtextobj.vim'
Plug 'tommcdo/vim-exchange'
Plug 'kana/vim-textobj-entire'
Plug 'machakann/vim-highlightedyank'
Plug 'dbakker/vim-paragraph-motion'
Plug 'michaeljsmith/vim-indent-object'
Plug 'kana/vim-textobj-user'
Plug 'majutsushi/tagbar'
Plug 'tmux-plugins/vim-tmux' " 支持 tmux 的配置文件语法高亮
Plug 'yianwillis/vimcdoc' " vim中文文档
Plug 'bling/vim-airline' " airline
Plug 'vim-airline/vim-airline-themes' " airline theme
call plug#end()

" 设置easymotion的leader键为<,>
let g:EasyMotion_leader_key=','

" 配置nerdtree的打开快捷键为<F2>
nmap <f2> :NERDTreeToggle<CR>

" 设置保存命令历史为200行
set history=200
" Configuration file for vim
set modelines=0		" CVE-2007-2438
set number
" 自适应不同语言的智能缩进
filetype indent on
" 将制表符扩展为空格
set expandtab
" 设置编辑时制表符占用空格数
set tabstop=4
" 设置格式化时制表符占用空格数
set shiftwidth=4
" 让 vim 把连续数量的空格视为一个制表符
set softtabstop=4
set smartindent
set autoindent
set cindent
" 设置命令模式的tab键展开内容
set wildmenu
set wildmode=list:longest,full

" 将vim的寄存器和系统剪贴板数据保持一致
set clipboard=unnamed

set fileencodings=utf-8,ucs-bom,gbk,default,latin1
set helplang=cn

" 设置高亮
syntax enable
syntax on
set hlsearch
set ruler

" 左下角那一行的状态
set showmode
" 设置内部编码为utf8
set encoding=utf8
set scrolloff=3
" Normally we use vim-extensions. If you want true vi-compatibility
" remove change the following statements
" Use Vim defaults instead of 100% vi compatibility
set nocompatible
" 在 Vim 窗口右下角，标尺的右边显示未完成的命令
set showcmd

colorscheme elflord

" Don't write backup file if vim is being called by "crontab -e"
au BufWrite /private/tmp/crontab.* set nowritebackup nobackup
" Don't write backup file if vim is being called by "chpass"
au BufWrite /private/etc/pw.* set nowritebackup nobackup

" vim 设置光标样式
"Mode Settings

let &t_SI.="\e[5 q" "SI = INSERT mode
let &t_SR.="\e[4 q" "SR = REPLACE mode
let &t_EI.="\e[1 q" "EI = NORMAL mode (ELSE)

" 映射ESC键
inoremap jj <esc>
