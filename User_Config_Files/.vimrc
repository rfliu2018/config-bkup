set nocompatible
filetype off

" ### Vim-plug
call plug#begin('~/.vim/plugged')
Plug 'Valloric/YouCompleteMe'
Plug 'scrooloose/nerdtree'
call plug#end()


"###外观
" colorscheme evening                " 配置颜色主题
" set guifont=Consolas:h12           " 设置字体和大小
set number                         " 显示行号
set ruler                          " 打开状态栏标尺
set cursorline                     " 突出显示当前行
set syntax=on                      " 语法高亮
set showmatch                      " 高亮显示匹配的括号
set matchtime=3                    " 匹配括号高亮的时间(单位：0.1s)
set scrolloff=10                   " 光标到屏幕底端保留 10 行 (光标位于屏底看着很不舒服的)
set lines=35 columns=118           " 启动时的大小
winpos 177 51                     " 启动时的位置
set wrap 			   " 自动换行


"###搜索
set ignorecase smartcase           " 搜索忽略大小写，但有大写字母时仍保持大小写敏感
set hlsearch                       " 高亮搜索
set incsearch                      " 增量式搜索,逐字符高亮
set wrapscan			   " 循环搜索


"###操作
set clipboard+=unnamed             " 共享剪切板
set showcmd                        " 输入的命令显示出来
set iskeyword+=_,$,@,%,#,-         " 带有如下符号的单词不要被换行分割
set noexpandtab                    " 不用空格代替Tab (makefile是会经常用Tab的)
set tabstop=4                      " Tab 键的宽度
set shiftwidth=4                   " 行交错宽度
set mouse+=a                        " 鼠标可用
set autoindent                     " 继承前一行的缩进方式，特别适用于多行注释
set autochdir 			   " 将当前目录自动切换为文件所在目录

"###备份
set confirm                        " 未保存或者只读时，弹出确认
set nobackup                       " 不生成备份文件
setlocal noswapfile                " 不生成 swap 文件
set bufhidden=hide                 " 当 buffer 被丢弃的时候隐藏
set noerrorbells                   " 不发出警告声

"###解码
set fenc=utf-8
set fencs=utf-8,usc-bom,euc-jp,gb18030,gbk,gb2312,cp936
