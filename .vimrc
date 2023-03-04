"setting up .vimrc
"1) installation of vim plug
"sudo apt install git
"create the following folders:
"mkdir ~/.vim ~/.vim/autoload ~/.vim/backup ~/.vim/color ~/.vim/plugged
"cd .vim/autoload/
"create the file plug.vim and copy the code from https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
"in the .vimrc run the following
":source %
":PlugInstall

"2) installation of Vundle
"cd .vim/
"mkdir bundle && cd bundle/
"git clone https://github.com/gmarik/Vundle.vim.git
"git clone https://github.com/ycm-core/YouCompleteMe
"Follow the installation instruction from the YouCompleteMe github repo

"To copy from vim to clipboard: sudo apt install vim-gtk

filetype off

syntax on "check what this does

set rtp+=~/.vim/bundle/Vundle.vim
set nocompatible
set background=dark
set belloff=all
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

if executable('rg')
    let g:rg_derive_root='true'
endif

let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
let g:netrw_browse_split=2
let g:netrw_banner=0
let g:netrw_winsize=25
let NERDTreeShowHidden=1
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_start_level=1
let g:indent_guides_guide_size=1
let g:ctrlp_use_caching=0
let mapleader = " "

nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>t :NERDTreeToggle<CR>
