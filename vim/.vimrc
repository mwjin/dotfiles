set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}
" All of your Plugins must be added before the following line
Plugin 'altercation/vim-colors-solarized'
Plugin 'sickill/vim-monokai'
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'scrooloose/nerdtree'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/syntastic'
Plugin 'bfrg/vim-cpp-modern'
Plugin 'ctrlpvim/ctrlp.vim'     " file string search                            
Plugin 'majutsushi/tagbar'      " tag explorer                                  
Plugin 'rhysd/vim-clang-format' " code styler                                   
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
" 
" Shortcut \nt for NERDTree
map <Leader>nt <ESC>:NERDTree<CR>"
" Improve the performance of ctrlp
"let g:ctrlp_custom_ignore = {
"  \ 'dir':  '\.git$\|public$\|log$\|tmp$\|vendor$',
"  \ 'file': '\v\.(exe|so|dll)$'
"\ }
"Custom
let g:airline_section_x=''
let g:airline_theme='wombat'
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled = 1
let g:syntastic_cpp_compiler_options=' -std=c++11'

syntax enable
colorscheme monokai
set hlsearch
set nu 
set scrolloff=2
set wildmode=longest,list
set ts=4 
set sts=4 
set sw=1 
set autowrite 
set autoread 
set bs=eol,start,indent
set history=256
set laststatus=2 
set paste 
set shiftwidth=4 
set showmatch 
set smartcase 
set smarttab
set smartindent
set autoindent
set softtabstop=4
set tabstop=4
set expandtab  " type a tab character as spaces
set ruler 
set incsearch
set statusline=\ %<%l:%v\ [%P]%=%a\ %h%m%r\ %F\
"set mouse=nvi  " mouse mode except command mode                                
set cursorline                                                                  
set colorcolumn=80                                                              
hi colorcolumn      ctermbg=240                                                 
hi CursorLine       term=bold cterm=bold ctermbg=235

" F5 to set encoding CP949,                                                     
" F6 to set encoding UTF8                                                       
nmap <F5> :e ++enc=cp949<CR>:set fileencodings=cp949<CR>                        
nmap <F6> :e ++enc=utf8<CR>:set fileencodings=utf8<CR>                          
nmap <F4> :TagbarToggle<CR>                                                     
nmap <F3> :NERDTreeToggle<CR>                                                   
                                                                                
" file encoding                                                                 
set encoding=utf-8                                                              
set fileencodings=utf8,cp949  

