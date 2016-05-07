autocmd BufWritePost .vimrc source % " automatically reload .vimrc

set autoindent
set backspace=2         " make backspace work as expected in insert mode
set expandtab           " replace tabs with spaces
set hlsearch            " highlight search results
set ignorecase          " case-insensitive search
set incsearch
set nobackup
set noswapfile
set nowritebackup
set number              " display line numbers
set pastetoggle=<F2>    " toggle paste mode in insert mode
set shiftwidth=4
set showmatch
set smartcase
set softtabstop=4
set tabstop=4

set t_Co=256

syntax on

try
    colorscheme Sunburst
catch
endtry

if has('vim_starting')
    if &compatible
        set nocompatible
    endif

    set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#begin(expand('~/.vim/bundle/'))

NeoBundleFetch 'Shougo/neobundle.vim'

NeoBundle 'kien/ctrlp.vim' " fuzzy file finder

NeoBundle 'Raimondi/delimitMate'
let delimitMate_expand_cr=1

NeoBundle 'tpope/vim-fugitive' " git command wrapper

NeoBundle 'gregsexton/gitv' " git repository viewer

call neobundle#end()

filetype plugin indent on

NeoBundleCheck
