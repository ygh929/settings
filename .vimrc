filetype off                  " required
set nocompatible              " required
syntax on
set number
set tabstop=4
set encoding=utf-8


" Enable folding
set foldmethod=indent
set foldlevel=99
nnoremap <space> za

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)

" Change color scheme
Plugin 'jnurmine/Zenburn'
Plugin 'altercation/vim-colors-solarized'
set t_Co=256

" Fold
Plugin 'tmhedberg/SimpylFold'
let g:SimpylFold_docstring_preview=1

"Auto indentation
Plugin 'vim-scripts/indentpython.vim'

" Bad whitespace
" Use EraseBadWhitespace to remove
Plugin 'bitc/vim-bad-whitespace'

"Auto complete
Plugin 'Valloric/YouCompleteMe'

"syntax checking
Plugin 'scrooloose/syntastic'
Plugin 'nvie/vim-flake8'

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Nerdtree
Plugin 'scrooloose/nerdtree'
" auto show nerdtree
" autocmd vimenter * NERDTree

" Super Searching
" use c-p to search
Plugin 'kien/ctrlp.vim'


Plugin 'jpalardy/vim-slime'
let g:slime_paste_file = "$HOME/.slime_paste"
let g:slime_target = "tmux"
xmap <Leader>s <Plug>SlimeRegionSend
nmap <Leader>s <Plug>SlimeParagraphSend
vmap <Leader>s <Plug>SlimeRegionSend
nmap <c-c>v     <Plug>SlimeConfig


Plugin 'Lokaltog/powerline'
set rtp+=$HOME/.local/lib/python2.7/site-packages/powerline/bindings/vim/
" Always show statusline
set laststatus=2
" " Use 256 colours (Use this setting only if your terminal supports 256
" colours)
let &t_Co=256

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
