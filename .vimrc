set novb
" Keymappings
imap jk <esc>

" ctags相关的mapping
nmap mi <c-]>
nmap mo <c-t>
nmap mu zA
nmap mm :marks<cr>
" nerdtree相关的mapping t
nmap ts :NERDTree<cr>
nmap tc <c-w>hq:

" buffer相关的mapping b-x
" 01. 显示buffer列表
nmap bl :ls<cr>

" =============================== highlight setting ===============
highlight XGroup ctermfg=yellow ctermbg=green guibg=yellow guifg=green term=bold
match XGroup /^Wangzh/

" 显示不做为缩进使用的tab
"match errorMsg /[^\t]\zs\t\+/

" 73列之后作为错误信息显示
"match ErrorMsg /\%>73v.\+/
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" autocmd InsertEnter * se cul
set cul
"set cursorcolumn

" 折叠相关
set foldmethod=indent
set foldcolumn=2

" 主题相关，主题文件目录: /usr/share/vim/vim80/colors
colorscheme darkblue
color ron

set ruler

" TAB编辑相关
set showtabline=2

" 默认显示绝对行号，插入模式显示绝对行号，其他模式显示相对行号。
set nu
set numberwidth=3

set relativenumber
augroup newFileDetection
    autocmd!
	autocmd InsertEnter  * : set norelativenumber
	autocmd InsertLeave  * : set relativenumber
augroup END

" set indent on
set autoindent
set cindent

" set table space
set tabstop=4
set softtabstop=4
set shiftwidth=4

" 每个tab转换为空格
"set expandtab
"set tabstop=2

" do not create backup and swapfile
set nobackup
set noswapfile

" match braces
set showmatch
" set cc=80

set cmdheight=1
set laststatus=2

" status bar config
set statusline=%F%m%r\ \|\ %{&ff},%{\"[\".(&fenc==\"\"?&enc:&fenc).((exists(\"+bomb\")\ &&\ &bomb)?\",B\":\"\").\"]\ \"},%Y\ \|%=\ %l/%L,%c\ \|\ %f

" color shift
let g:index=0
let g:colors=['blue','darkblue','default','delek','desert','elflord','evening','industry','koehler','morning','murphy','pablo','peachpuff','ron','shine','slate','torte','zellner']

function SetMyColorSchemeB()
    let g:index=g:index+1
	if g:index > 17
		let g:index=0
	endif

	let newcolor=g:colors[g:index]
	execute "colorscheme " . newcolor
endfunction

nmap <F4> :call SetMyColorSchemeB() <cr>
nmap wv <c-w>v
nmap rr :reg <cr>
nmap bb :ls <cr>
