" ------------------------------------------------------------------------------
" < 基础设置 >
" ------------------------------------------------------------------------------
set nocompatible                                      " 禁用 vi 兼容模式
set mouse=a                                           " 在任何模式下启用鼠标
set winaltkeys=no                                     " Windows 禁用 ALT 操作菜单
set nowrap                                            " 关闭自动换行
set ttimeout                                          " 打开功能键超时检测
set ttimeoutlen=50                                    " 功能键超时检测 50 毫秒
set autoread                                          " 当文件在外部被修改，自动更新该文件
set wildmenu                                          " 增强模式中的命令行自动完成操作
set completeopt=longest,menu                          " 自动补全配置

set autoindent                                        " 自动缩进
set cindent                                           " 打开 C/C++ 语言缩进优化
set expandtab                                         " 将Tab键转换为空格
set tabstop=4                                         " 设置Tab键的宽度
set shiftwidth=4                                      " 换行时自动缩进4个空格
set smarttab                                          " 指定按一次backspace就删除shiftwidth宽度的空格
set backspace=2                                       " 设置 Backspace 键模式 backspace=indent,eol,start
set smartindent                                       " 启用智能对齐方式
filetype on                                           " 启用文件类型侦测
filetype indent on                                    " 针对不同的文件类型采用不同的缩进格式
filetype plugin on                                    " 针对不同的文件类型加载对应的插件
filetype plugin indent on                             " 启动自动补全

" 定义快捷键的前缀，即<Leader>
let mapleader=";"

" ------------------------------------------------------------------------------
"  < 编码配置 >
" ------------------------------------------------------------------------------
set encoding=utf-8                                    " 设置内部编码
set fileencoding=utf-8                                " 设置当前文件编码
set fileencodings=ucs-bom,utf-8,gbk,cp936,latin-1     " 设置支持打开的文件的编码
set fileformat=unix                                   " 设置新文件的<EOL>格式
set fileformats=unix,dos,mac                          " 给出文件的<EOL>格式类型

" ------------------------------------------------------------------------------
"  < 显示配置 >
" ------------------------------------------------------------------------------
set shortmess=atI                                     " 去掉欢迎界面
set number                                            " 显示行号
set laststatus=2                                      " 启用状态栏信息
set cmdheight=2                                       " 设置命令行的高度为2，默认为1
set ruler                                             " 显示当前的行号列号
set showcmd                                           " 在状态栏显示正在输入的命令
set showmode                                          " 左下角显示当前 vim 模式
set modelines=0
set cursorline                                        " 突出显示当前行
set cursorcolumn                                      " 突出显示当前列
set colorcolumn=81                                    " 80 个字符的位置显示一条竖线来警示
set showmatch                                         " 显示匹配的括号
set matchtime=2                                       " 显示括号匹配的时间
set display=lastline                                  " 显示最后一行
set wildmenu                                          " 允许下方显示目录
set lazyredraw                                        " 延迟绘制（提升性能）
set errorformat+=[%f:%l]\ ->\ %m,[%f:%l]:%m           " 错误格式
set listchars=tab:\|\ ,trail:.,extends:>,precedes:<   " 设置分隔符可视
set t_ti= t_te=                                       " 退出后，内容显示在终端屏幕

" termguicolors
if has("termguicolors")
    set termguicolors
endif

" -----------------------------------------------------------------------------
" < 搜索配置 >
" -----------------------------------------------------------------------------
set hlsearch                                          " 高亮搜索
set incsearch                                         " 在输入要搜索的文字时，实时匹配
set ignorecase                                        " 搜索模式里忽略大小写
set smartcase                                         " 如果搜索模式包含大写字符，不使用 'ignorecase' 选项，只有在输入搜索模式并且打开 'ignorecase' 选项时才会使用

" -----------------------------------------------------------------------------
" < 折叠配置 >
" -----------------------------------------------------------------------------
set foldenable                                        " 启用折叠
set foldmethod=indent                                 " indent 折叠方式
set foldlevelstart=99                                 " 开始编辑时总是关闭所有的折叠 (0)，关闭某些折叠 (1) 或者没有折叠 (99)

" -----------------------------------------------------------------------------
" < 语法高亮 >
" -----------------------------------------------------------------------------
if has('syntax')
    syntax enable
    syntax on
endif

" -----------------------------------------------------------------------------
"  < 备份配置 >
" -----------------------------------------------------------------------------
set nobackup                                          " 不允许备份
set nowb
set noswapfile                                        " 禁用交换文件
set noundofile                                        " 禁用 undo 文件
