" abbreviate
ab msg MessageBox(hwnd,"","Title",MB_OK);

" basic setting
set novb
set nobackup
set noswapfile
set hlsearch

" folding
set foldmethod=indent
set foldcolumn=2

colorscheme darkblue
color ron

" tab & status bar
set showtabline=2
set cmdheight=1
set laststatus=2
set statusline=%F%m%r\ \|\ %{&ff},%{\"[\".(&fenc==\"\"?&enc:&fenc).((exists(\"+bomb\")\ &&\ &bomb)?\",B\":\"\").\"]\ \"},%Y\ \|%=\ %l/%L,%c\ \|\ %f

" colums,rows,lines
set ruler
set nu
set numberwidth=3
set relativenumber
set cul
"set cc=80

" set indent on
set autoindent
set cindent

" tab & space
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set tabstop=2

set showmatch

let g:tstatus=0
function SetTabDisplayAttribute()
    if g:tstatus==0
        execute "set list"
        let g:tstatus=1
    else
        execute "set nolist"
        let g:tstatus=0
    endif
endfunction

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

nmap <F5> :call SetTabDisplayAttribute() <cr>
nmap <F4> :call SetMyColorSchemeB() <cr>
nmap <F6> :close <cr>
nmap ; :
nmap rr :reg <cr>
" ctags相关的mapping
nmap mi <c-]>
nmap mo <c-t>
nmap mu zA
nmap mm :marks<cr>
nmap bl :ls<cr>
imap jk <esc>

" nerdtree相关的mapping t
nmap ts :NERDTree<cr>
nmap tc <c-w>hq:
