
set number

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall
endif

call plug#begin('~/.vim/plugged')
Plug 'sheerun/vim-polyglot'
Plug 'slashmili/alchemist.vim'
Plug 'w0rp/ale'
call plug#end()
