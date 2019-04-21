" XiaoyeZhang Nvim config

call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'kien/ctrlp.vim'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'Vimjas/vim-python-pep8-indent'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'deoplete-plugins/deoplete-jedi'
Plug 'davidhalter/jedi-vim'
Plug 'nvie/vim-flake8'
Plug 'mileszs/ack.vim'
Plug 'joshdick/onedark.vim'

call plug#end()

syntax enable
syntax on
colorscheme onedark

let mapleader=","

" 影响nerdtree快捷方式
map <C-n> :NERDTreeToggle<CR>
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree

 
" Airline settings
let g:airline_powerline_fonts = 1
let g:airline_section_y = ""
let g:airline#extensions#tabline#enabled = 1

" do not show error/warning section
let g:airline_section_error = ""
let g:airline_section_warning = ""

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

set hidden " 避免必须保存修改才可以跳转buffer

" buffer快速导航
nnoremap <Leader>b :bp<CR>
nnoremap <Leader>f :bn<CR>

" 查看buffers
nnoremap <Leader>l :ls<CR>

" Set paste mode
set pastetoggle=<F10>

let g:python_host_prog=expand('~/.virtualenvs/python2.7/bin/python')
let g:python3_host_prog=expand('~/.virtualenvs/python3/bin/python')
let g:deoplete#enable_at_startup = 1

" disable autocompletion, cause we use deoplete for completion
let g:jedi#completions_enabled = 0

" open the go-to function in split, not another buffer
let g:jedi#use_splits_not_buffers = "right"

" Jedi
let g:jedi#goto_command = "<leader>gg"
