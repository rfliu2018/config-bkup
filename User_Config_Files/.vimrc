set nocompatible
filetype off

" ### Vim-plug
call plug#begin('~/.vim/plugged')
Plug 'joshdick/onedark.vim'
Plug 'ervandew/supertab'
Plug 'jiangmiao/auto-pairs'
Plug 'easymotion/vim-easymotion'
Plug 'Chiel92/vim-autoformat'
Plug 'itchyny/lightline.vim'
Plug 'majutsushi/tagbar'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'Valloric/YouCompleteMe'
call plug#end()


"###外观
colorscheme onedark                " 配置颜色主题
" set guifont=Consolas:h12         " 设置字体和大小
set number relativenumber      " 显示行号
set ruler                          " 打开状态栏标尺
set cursorline                     " 突出显示当前行
set syntax=on                      " 语法高亮
set showmatch                      " 高亮显示匹配的括号
set laststatus=2                   " 总是显式状态行
set matchtime=3                    " 匹配括号高亮的时间(单位：0.1s)
set scrolloff=10                   " 光标到屏幕底端保留 10 行 (光标位于屏底看着很不舒服的)
set lines=35 columns=118           " 启动时的大小
winpos 177 51                     " 启动时的位置
set wrap			   " 自动换行


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
set mouse+=a                       " 鼠标可用
set autoindent                     " 继承前一行的缩进方式，特别适用于多行注释
set autochdir					   " 将当前目录自动切换为文件所在目录
set completeopt=longest,menu	   "让Vim的补全菜单行为与一般IDE一
let mapleader = ","

"###备份
set confirm                        " 未保存或者只读时，弹出确认
set nobackup                       " 不生成备份文件
setlocal noswapfile                " 不生成 swap 文件
set bufhidden=hide                 " 当 buffer 被丢弃的时候隐藏
set noerrorbells                   " 不发出警告声

"###解码
set fenc=utf-8
set fencs=utf-8,usc-bom,euc-jp,gb18030,gbk,gb2312,cp936



"&&& 快捷键重置
nnoremap L $
nnoremap H ^
onoremap L $
onoremap H ^
nnoremap <TAB> >>
nnoremap <S-TAB> <<
vnoremap <TAB> >
vnoremap <S-TAB> >

"&&& Ctrl
inoremap <c-l> <right>
nnoremap <c-l> <c-w>l
nnoremap <c-h> <c-w>h
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k

"@@@ youcompleteme.vim
let g:ycm_confirm_extra_conf=0 "关闭加载.ycm_extra_conf.py提示
let g:ycm_global_ycm_extra_conf='~/.vim/.ycm_extra_conf.py'
let g:ycm_server_python_interpreter='/usr/bin/python3'
inoremap <expr> <CR>       pumvisible() ? "\<C-y>" : "\<CR>"
"上下左右键的行为 会显示其他信息
inoremap <expr> <Down>     pumvisible() ? "\<C-n>" : "\<Down>"
inoremap <expr> <Up>       pumvisible() ? "\<C-p>" : "\<Up>"
inoremap <expr> <PageDown> pumvisible() ? "\<PageDown>\<C-p>\<C-n>" : "\<PageDown>"
inoremap <expr> <PageUp>   pumvisible() ? "\<PageUp>\<C-p>\<C-n>" : "\<PageUp>"
let g:ycm_collect_identifiers_from_tags_files=1	" 开启 YCM 基于标签引擎
let g:ycm_min_num_of_chars_for_completion=2		" 从第2个键入字符就开始罗列匹配项
let g:ycm_min_num_identifier_candidate_chars=2
let g:ycm_cache_omnifunc=0						" 禁止缓存匹配项,每次都重新生成匹配项
let g:ycm_seed_identifiers_with_syntax=1		" 语法关键字补全
let g:ycm_key_invoke_completion = '<c-z>'
let g:ycm_filetype_whitelist = {
			\ "c":1,
			\ "cpp":1,
			\ "objc":1,
			\ "sh":1,
			\ "zsh":1,
			\ "zimbu":1,
			\ }
let g:ycm_semantic_triggers =  {
			\ 'c,cpp,python,java,go,erlang,perl': ['re!\w{2}'],
			\ 'cs,lua,javascript': ['re!\w{2}'],
			\ }
highlight PMenu ctermfg=0 ctermbg=242 guifg=black guibg=darkgrey
highlight PMenuSel ctermfg=242 ctermbg=8 guifg=darkgrey guibg=black


"@@@ lightline.vim
let g:lightline = {
			\ 'colorscheme': 'wombat',
			\ 'active': {
			\   'right': [ [ 'lineinfo' ],
			\              [ 'percent' ],
			\              [ 'fileformat', 'fileencoding', 'filetype', 'charvaluehex' ] ]
			\ },
			\ 'component': {
			\   'charvaluehex': '0x%B'
			\ },
			\ }







"@@@ tagbar.vim
nmap <F8> :TagbarToggle<CR>







"@@@ vim-autoformat.vim
noremap <F3> :Autoformat<CR>
au BufWrite * :Autoformat "formatted upon saving file








"@@@ vim-commentary.vim
nnoremap \c gcc






"@@@ easymotion.vim
" <Leader>f{char} to move to {char}
map  <Leader>f <Plug>(easymotion-bd-f)
nmap <Leader>f <Plug>(easymotion-overwin-f)

" s{char}{char} to move to {char}{char}
nmap <Leader>s <Plug>(easymotion-overwin-f2)

" Move to line
map <Leader>L <Plug>(easymotion-bd-jk)
nmap <Leader>L <Plug>(easymotion-overwin-line)

" Move to word
map  <Leader>w <Plug>(easymotion-bd-w)
nmap <Leader>w <Plug>(easymotion-overwin-w)

"$$$ 定义函数SetTitle，自动插入文件头
autocmd BufNewFile *.py,*.sh, exec ":call SetTitle()"
let $author_name = "xxxx"
let $author_email = "xxxx@xxx.xx"

func SetTitle()
	if &filetype == 'sh'
		call setline(1, "\#!/bin/bash")
	elseif &filetype == 'python'
		call setline(1, "\#!/usr/bin/python")
		call append(line("."), "\# -*- coding: utf-8 -*-")
	endif
endfunc

"
"$$$
if has("autocmd")
	au BufReadPost * if line("`\"") > 1 && line("`\"") <= line("$") | exe "normal! g`\"" | endif
endif
" for simplicity, "  au BufReadPost * exe "normal! g`\"", is Okay.
