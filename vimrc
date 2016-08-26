set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')
"
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
"Plugin 'thinca/vim-ref'
Plugin 'elixir-lang/vim-elixir'
Plugin 'slashmili/alchemist.vim'
"Plugin 'mattreduce/vim-mix'
Plugin 'scrooloose/nerdtree'
Plugin 'majutsushi/tagbar'
Plugin 'Lokaltog/vim-powerline'
Plugin 'nicoraffo/conque'
"Plugin 'awetzel/elixir.nvim'
"
" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" kaltog/vim-powerline
"
" plugin on GitHub repo
"""""""Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'L9'
" Git plugin not hosted on GitHub
""""""Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
""""""Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
""""""Plugin 'ascenator/L9', {'name': 'newL9'}
"
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
" filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to
" auto-approve removal
" 
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
let mapleader=";"
"set viminfo='1000,f1,<500
syntax enable 
syntax on
set number 
set nowrap
set pastetoggle=<F12>
"let g:netrw_winsize = 30
nmap <leader>e :Explore!<cr>
nmap <leader>f :NERDTreeToggle<cr>
"let g:alchemist_tag_disable = 1
let g:alchemist_tag_map = '<C-]]>'
let g:alchemist_tag_stack_map = '<C-TT>'
"set tags = "/root/fifa2/tags"
"下一行是为了让tagbar能显示elixir的模块函数
let g:tagbar_type_elixir = {'ctagstype': 'elixir', 'kinds':['f:functions:0:0', 'c:callbacks:0:0', 'd:delegates:0:0', 'e:exceptions:0:0','i:implementations:0:0', 'a:macros:0:0', 'o:operators:0:0', 'm:modules:0:0','p:protocols:0:0', 'r:records:0:0'], 'sro': '.', 'kind2scope': {'m':'modules'}, 'scope2kind': {'modules': 'm'}}
"let g:tagbar_winsize = 1
nmap <leader>t :TagbarToggle<cr>
"nmap <leader><leader>t :TagbarClose<cr>
hi Cursorline term=reverse ctermbg=242 guibg=DarkGrey cterm=NONE "这样可以使得cursorline的下滑线去掉
hi Cursorcolumn term=reverse ctermbg=242 guibg=DarkGrey cterm=NONE
nmap <Leader>c :set cursorline! cursorcolumn! <cr>
nmap <Leader>sh :ConqueTermSplit bash<CR>  "用<Leader>sh作为快捷键打开Conque shell
nmap - :resize -1<CR>  "这样就可以用加减键控制窗口的大小了
nmap = :resize +1<CR>
"set nocompatible   " Disable vi-compatibility
set laststatus=2   " Always show the statusline
set encoding=utf-8 " Necessary to show Unicode glyphs
"let g:Powerline_symbols = 'fancy'
