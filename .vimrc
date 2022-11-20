" Filetype support
filetype plugin indent on
syntax on

" Use what's already there
runtime macros/matchit.vim

" Settings
set autoindent
set autoread
set backspace=indent,eol,start
set clipboard^=unnamed
set cursorline
set cursorlineopt=number
set display=truncate
set encoding=utf-8
set esckeys
set formatoptions+=jr
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
set pastetoggle=<F11>
set relativenumber
set ruler
set shortmess=at
set showbreak=¦
set showcmd
set showmatch
set smartcase
set smarttab
set spelllang=en,de
set splitbelow
set splitright
set statusline=[%n]\ %F%m%r%h%w%=%y\ [%{&ff}]\ [%{&fileencoding}]\ [%l\/%L\ -\ %c%V\ %p%%]
set ttimeout
set ttimeoutlen=10
set whichwrap=<,>,h,l
set wildmenu
set wildmode=full
set wrap

" Colorscheme
colorscheme lunaperche

" Cursor: Mode aware cursor
let &t_SI = "\<esc>[5 q"
let &t_EI = "\<esc>[2 q"
if exists ('&t_SR')
	let &t_SR = "\<esc>[3 q"
endif

" Cursor: Reset cursor shape on startup (ref. https://github.com/microsoft/terminal/issues/4335)
augroup CursorShapeReset
	autocmd!
	autocmd VimEnter * :normal :startinsert :stopinsert
augroup END

" Enable italics for Terminal.app
let &t_ZH="\e[3m"
let &t_ZR="\e[23m"

" Map leader to , and restore , functionality with ,,
let mapleader=','
nnoremap <leader>, ,

" Toggle crosshair cursor highlighting
nnoremap <Leader>cc :set cursorline! cursorcolumn!<CR>

" Toogle list chars
nnoremap <Leader>l :set list!<CR>

" Toggle between hybrid and absolute line numbers automatically
augroup NumberToggle
	autocmd!
	autocmd BufEnter,FocusGained,InsertLeave,WinEnter * if &number && mode() != "i" | set relativenumber | endif
	autocmd BufLeave,FocusLost,InsertEnter,WinLeave * if &number | set norelativenumber | endif
augroup END

" Function: Strip trailing whitespaces
function! FixWhitespaces()
	if !&binary && &filetype != 'diff'
		normal mz
		normal Hmy
		%s/\s\+$//e
		normal 'yz<CR>
		normal `z
	endif
endfunction

" Function: Enable word processing mode
function! WordProcessorMode()
	nnoremap j gj
	nnoremap k gk
	setlocal linebreak
	setlocal noexpandtab
	setlocal smartindent
	setlocal spell spelllang=en,de
	setlocal textwidth=80
	syntax off
endfunction
