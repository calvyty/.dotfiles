" Built on top of tpope's [vim-sensible](https://github.com/tpope/vim-sensible)

" Enable mouse support
set mouse=a

" Allow to have more than one unsaved buffer
set hidden

" Statusline and tabline as recommended for [vim-flagship](https://github.com/tpope/vim-flagship)
set laststatus=2
set showtabline=2
set guioptions-=e

" Enable relative line numbering
set number
set relativenumber

" Remap <[> and <]> as recommended for use with [tpope's vim-unimpaired](https://github.com/tpope/vim-unimpaired)
nmap < [
nmap > ]
omap < [
omap > ]
xmap < [
xmap > ]
