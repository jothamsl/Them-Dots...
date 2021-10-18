
"███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗
"████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║
"██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║
"██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║
"██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║
"╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═

" GLOBALS
let g:mapleader = "\<Space>" " Leader Key
let g:python_host_prog = '/usr/bin/python3.9'
" let g:python_host_prog = '/usr/bin/python2'

syntax enable             " Enables syntax highlighting
" set emoji                 " Enables emoji
set nocompatible          " Disable compatibility to old-time vi
set hidden                " Required to keep multiple buffers open multiple buffers
set hlsearch              " Highlight search results
set nowrap                " Diplay long lines as just one line
" set noswapfile            " No swapfile formed
set nohlsearch            " No highlight search
set encoding=utf-8        " The encoding displayed
set pumheight=10          " Makes popup menu smaller
set fileencoding=utf-8    " File encoding written to file
set ruler                 " Show the cursor position all the time
set cmdheight=1           " More space for displaying messages
set iskeyword+=-          " Treat dash separated words as a word text object
set mouse=a               " Enable your mouse
set splitbelow            " Horizontal splits will automatically be below
set splitright            " Vertical splits will automatically be to the right
set t_Co=256              " Support 256 colors
set conceallevel=0        " So that I can see `` in markdown files
set tabstop=2             " Insert 4 spaces for a tab
set shiftwidth=2          " Change the number of space characters inserted for indentation
set smarttab              " Makes tabbing smarter will realize you have 2 vs 4
set expandtab             " Coverts tabs to spaces
set smartindent           " Makes indenting smart
set autoindent            " Good auto indent
set number                " Line numbers
"set laststatus=0          " Always display the status line
"set cursorline            " Enable highlighting of the current line
"set showtabline=2         " Always show tabs
set noshowmode            " We don't need to see things like -- INSERT -- anymore
set background=dark       " Tell vim what the background color looks like
set nobackup              " This is recommended by coc
set nowritebackup         " This is recommended by coc
set updatetime=50         " Faster completion
set timeoutlen=500        " By default timeoutlen is 1000 ms
set formatoptions-=cro    " Stop newline continuation of comments
set clipboard=unnamedplus " Copy paster between vim and everything else
set history=1000          " Set history limit
set wildmode=longest,list " Get bash-like tab completions
set inccommand=nosplit    " Visual feedback while substituting
autocmd TermOpen * setlocal nonumber norelativenumber " No line number for terminal
set incsearch ignorecase smartcase hlsearch             " Highlight text while searching
set termguicolors

let g:clang_format#code_style = "google"

au! BufWritePost $MYVIMRC source %   " Auto souce when writing to init.vim alternatively you can run :source $MYVIMRC

cmap w!! w !sudo tee %
