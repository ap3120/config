set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim

syntax on

set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set number
set smartindent
set incsearch


call plug#begin('~/.vim/plugged')
Plug 'morhetz/gruvbox'
Plug 'jremmen/vim-ripgrep'
Plug 'tpope/vim-fugitive'
Plug 'leafgarland/typescript-vim'
Plug 'vim-utils/vim-man'
Plug 'lyuts/vim-rtags'
Plug 'https://github.com/ctrlpvim/ctrlp.vim'
Plug 'mbbill/undotree'
Plug 'preservim/nerdtree'
call plug#end()

call vundle#begin('~/.vim/bundle')
Plugin 'VundleVim/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'nathanaelkane/vim-indent-guides'
call vundle#end()

colorscheme gruvbox
set background=dark

if executable('rg')
    let g:rg_derive_root='true'
endif
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
let g:netrw_browse_split=2
let g:netrw_banner=0
let g:netrw_winsize=25

let g:ctrlp_use_caching=0
let mapleader = " "
"nnoremap <leader>t :wincmd v<bar> :Ex <bar> :vertical resize 20<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>t :NERDTreeToggle<CR>

let NERDTreeShowHidden=1
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_start_level=1
let g:indent_guides_guide_size=1
