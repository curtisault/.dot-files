

if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
	silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	autocmd VimEnter * PlugInstall
endif

call plug#begin('~/.local/share/nvim/site/auoload/plug.vim')
	Plug 'sheerun/vim-polyglot'
	Plug 'w0rp/ale'
	Plug 'flazz/vim-colorschemes'
	Plug 'junegunn/fzf', {'dir': '~/.fzf', 'do': './install --all'}
	Plug 'junegunn/fzf.vim'
	Plug 'itchyny/lightline.vim'
	Plug 'zchee/deoplete-jedi', {'for': 'python'}
	Plug 'tpope/vim-commentary'
call plug#end()

" deoplete settings
let g:deoplete#enable_at_startup = 1
let g:deoplete#min_pattern_length = 1
let g:deoplete#auto_complete_delay = 1


colorscheme cobalt2

set noswapfile
set number
set cursorline
set ruler
set scrolloff=4
set sidescroll=5
set list
set nowrap
set mouse=a

nnoremap <C-H> <C-W><C-H>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
