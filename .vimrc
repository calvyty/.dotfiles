" Filetype support
filetype plugin indent on
syntax on

" Use what's already there
runtime macros/matchit.vim

" Settings
set autoindent
set autoread
set backspace=indent,eol,start
set clipboard+=unnamed
set display=truncate
set encoding=utf-8
set esckeys
set formatoptions=cqrt
set hidden
set hlsearch
set ignorecase
set incsearch
set laststatus=2
set listchars=eol:$,precedes:«,extends:»,tab:»·,trail:·,nbsp:+
set mouse=a
set nojoinspaces
set nrformats-=octal
set number 
set relativenumber
set ruler
set shortmess=at
set showbreak=¦
set showcmd
set smartcase
set smarttab
set spelllang=en,de
set splitbelow
set splitright
set statusline=[%n]\ %F%m%r%h%w%=%y\ [%{&ff}]\ [%{&fileencoding}]\ [%l\/%L\ -\ %c%V\ %p%%]
set ttimeout
set ttimeoutlen=100
set whichwrap=<,>,h,l
set wildmenu
set wildmode=full
set wrap

" Mode aware cursor
let &t_SI = "\<esc>[5 q"
let &t_EI = "\<esc>[2 q"
if exists ('&t_SR')
	let &t_SR = "\<esc>[3 q"
endif

" Enable italics for Terminal.app
let &t_ZH="\e[3m"
let &t_ZR="\e[23m"

" Map leader to , and restore , functionality with ,,
let mapleader=','
nnoremap <leader>, ,

" Toggle crosshair cursor highlighting
hi CursorLine   cterm=NONE ctermbg=15
hi CursorColumn cterm=NONE ctermbg=15
nnoremap <Leader>c :set cursorline! cursorcolumn!<CR>

" Toogle list chars
nnoremap <Leader>l :set list!<CR>

" Toggle between hybrid and absolute line numbers automatically
augroup numbertoggle
	autocmd!
	autocmd BufEnter,FocusGained,InsertLeave,WinEnter * if &number && mode() != "i" | set relativenumber   | endif
	autocmd BufLeave,FocusLost,InsertEnter,WinLeave   * if &number                  | set norelativenumber | endif
augroup END

" Function: Strip trailing whitespaces
function! FixWhitespace()
	if !&binary && &filetype != 'diff'
		normal mz
		normal Hmy
		%s/\s\+$//e
		normal 'yz<CR>
		normal `z
	endif
endfunction
