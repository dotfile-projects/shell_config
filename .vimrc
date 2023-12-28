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
Plug 'bling/vim-bufferline'
Plug 'kien/ctrlp.vim'
Plug 'tpope/vim-fugitive' " git支持
Plug 'tpope/vim-commentary'
Plug 'tmux-plugins/vim-tmux' " 支持 tmux 的配置文件语法高亮
Plug 'yianwillis/vimcdoc' " vim中文文档
Plug 'bling/vim-airline' " airline
Plug 'vim-airline/vim-airline-themes' " airline theme
Plug 'godlygeek/tabular' " Markdown依赖插件
Plug 'plasticboy/vim-markdown' " Markdown插件
" Plug 'itchyny/lightline.vim' " status bar
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } " fzf 文件及内容查找工具
call plug#end()

set background=dark

" Crtlp
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows

" let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
" let g:ctrlp_custom_ignore = {
"   \ 'dir':  '\v[\/]\.(git|hg|svn)$',
"   \ 'file': '\v\.(exe|so|dll)$',
"   \ 'link': 'some_bad_symbolic_links',
"   \ }

" 设置easymotion的leader键为<,>
let g:EasyMotion_leader_key=','

" 配置nerdtree的打开快捷键为<F2>
nnoremap <f2> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1 " 默认显示隐藏文件

" 配置markdown参数
" 快捷键: :Toc 打开目录, :InsertToc 插入目录, :TableFormat 格式化表格, :SetexToAtx 下划线标题转为#标题
"         :HeaderDecrease 减少级别, :HeaderIncrease 增加级别。
let g:vim_markdown_toc_autofit = 1 " 启用TOC
let g:vim_markdown_folding_level = 6 " 默认折叠级别设置为6
let g:vim_markdown_folding_style_pythonic = 1
let g:vim_markdown_follow_anchor = 1
let g:vim_markdown_anchorexpr = "'<<'.v:anchor.'>>'"
let g:vim_markdown_math = 1
let g:vim_markdown_frontmatter = 1
let g:vim_markdown_strikethrough = 1
let g:vim_markdown_autowrite = 1


" 设置vim本体参数
set history=200 " 保存命令历史为200行
set modelines=0 " 禁止查找模式行
set mouse=a " 使用鼠标
set t_Co=256 " 设置256色
filetype plugin indent on " 分为三部分命令：文件类型探测，使用文件类型相关的插件，使用缩进文件。
" 缩进
set expandtab " 将制表符扩展为空格
set tabstop=4 " 编辑时制表符占用空格数
set shiftwidth=4 " 格式化时制表符占用空格数
set softtabstop=4 " 让vim把连续数量的空格视为一个制表符
set smartindent " 智能对齐
set autoindent " 保持上一行的缩进
set cindent " 使用C语言的缩进
" 设置命令模式的tab键展开内容
set wildmenu " 在状态行上显示补全匹配
set wildmode=list:longest,full
" 将vim的寄存器和系统剪贴板数据保持一致
set clipboard=unnamed
" 编码
set encoding=utf-8 " Vim内部使用的字符编码方式设置为UTF-8
set fileencoding=utf-8 " Vim中当前编辑的文件的字符编码方式
set fileencodings=utf-8,ucs-bom,gbk,default,latin1 " Vim编辑文件编码探测顺序
set fileformat=unix " 设置文件编码为unix
set langmenu=zn_CN.UTF-8 " 菜单栏语言
set helplang=cn " 帮助文档语言,需要中文文档插件
" 设置高亮
set cursorline " 高亮光标所在行
syntax on " 打开文件的色彩高亮
set hlsearch " 高亮搜索内容
set incsearch " 逐字符搜搜
" set nowrapscan " 查找到文件结尾时截止
set ruler " 右下角显示光标位置
set ignorecase " 搜索模式忽略大小写
" 显示行号
set number
set relativenumber " 显示为相对行号
" 设置下方状态栏
set showmode " 命令行显示vim当前模式
set showcmd " 显示未完成(正在输入)的命令
set scrolloff=5 " 使光标始终和上下边缘相距5行
set nocompatible " 使用vim的改进模式, 不完全兼容vi模式
set laststatus=2 " 指定什么时候对最后一个窗口显示状态条:0-永远不,1-只有使用分割窗口的时候(默认),2-永远有

set confirm " 在处理未保存或只读文件的时候，弹出确认
set nobackup " 不需要备份
set noswapfile " 不要swp文件

set backspace=indent,eol,start
set whichwrap=b,s,<,>,[,] " 在普通模式和编辑模式中左右键可移动到上一行和下一行
set list " 显示行尾空白字符
set listchars=tab:>-,trail:~ " 行尾有多余<TAB>显示为-,空格显示为~
set cmdheight=1 " 底部消息空间设置为2行

"被分割窗口之间显示空白
set fillchars=vert:/
set fillchars=stl:/
set fillchars=stlnc:/

" vim 设置光标样式
let &t_SI.="\e[5 q" "SI = INSERT mode
let &t_SR.="\e[4 q" "SR = REPLACE mode
let &t_EI.="\e[1 q" "EI = NORMAL mode (ELSE)

" 按键映射
inoremap jj <esc>
nnoremap H ^
nnoremap L $
