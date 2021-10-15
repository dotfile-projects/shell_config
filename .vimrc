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
" Plug 'itchyny/lightline.vim' " status bar
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


" 设置vim本体参数
set history=200 " 保存命令历史为200行
set modelines=0 " 禁止查找模式行
set mouse=a " 使用鼠标
set t_Co=256 " 设置256色
filetype plugin indent on " 分为三部分命令：file on, file plugin on, file indent on.分别表示自动识别文件类型，用文件类型脚本，使用缩进定义文件。
" 缩进
set expandtab " 将制表符扩展为空格
set tabstop=4 " 编辑时制表符占用空格数
set shiftwidth=4 " 格式化时制表符占用空格数
set softtabstop=4 " 让vim把连续数量的空格视为一个制表符
set smartindent " 智能对齐
set autoindent " 保持上一行的缩进
set cindent " 使用C语言的缩进
" 设置命令模式的tab键展开内容
set wildmenu " 增强模式中的命令行自动完成操作
set wildmode=list:longest,full
" 将vim的寄存器和系统剪贴板数据保持一致
set clipboard=unnamed
" 编码
set encoding=utf-8 " Vim内部使用的字符编码方式设置为UTF-8
set fileencoding=utf-8 " Vim中当前编辑的文件的字符编码方式
set fileencodings=utf-8,ucs-bom,gbk,default,latin1 " Vim编辑文件编码探测顺序
set langmenu=zn_CN.UTF-8 " 菜单栏语言
set helplang=cn " 帮助文档语言,需要中文文档插件
" 设置高亮
set cursorline " 高亮光标所在行
syntax on " 语法高亮
set hlsearch " 高亮搜索
set incsearch " 搜索逐字符高亮
set ruler " 右下角显示标尺
" 显示行号
set number
set relativenumber " 显示为相对行号
" 设置下方状态栏
set showmode " 命令行显示vim当前模式
set showcmd " 显示输入的命令
set scrolloff=3 " 使光标始终和上下边缘相距3行
set nocompatible " 使用vim的键盘模式
set laststatus=2 " 总显示最后一个窗口的状态行；设为1则窗口数多于一个的时候显示最后一个窗口的状态行；0不显示最后一个窗口的状态行

set confirm " 在处理未保存或只读文件的时候，弹出确认
set nobackup " 不需要备份
set noswapfile " 不要swp文件

set backspace=indent,eol,start
set list  " show space chars
set listchars=tab:>-,trail:~ " 行尾有多余空格显示为~

"被分割窗口之间显示空白
set fillchars=vert:/
set fillchars=stl:/
set fillchars=stlnc:/

" vim 设置光标样式
let &t_SI.="\e[5 q" "SI = INSERT mode
let &t_SR.="\e[4 q" "SR = REPLACE mode
let &t_EI.="\e[1 q" "EI = NORMAL mode (ELSE)

" 按键映射
inoremap jj <esc> " 映射ESC键位jj
nnoremap H ^
nnoremap L $
