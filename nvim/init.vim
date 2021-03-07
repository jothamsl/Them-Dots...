"███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗
"████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║
"██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║
"██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║
"██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║
"╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═

set encoding=UTF-8
syntax enable
"set nocompatible            " disable compatibility to old-time vi
set showmatch               " show matching brackets.
set ignorecase              " case insensitive matching
set mouse=a                 " middle-click paste with mouse
set hlsearch                " highlight search results
set tabstop=4               " number of columns occupied by a tab character
set shiftwidth=4            " width for autoindents
set softtabstop=4           " see multiple spaces as tabstops so <BS> does the right thing
set expandtab               " converts tabs to white space
set autoindent              " indent a new line the same amount as the line just typed
set number                  " add line numbers
set scrolloff=999           " Keep cursor at center of file
set wrap breakindent        " Wrap long lines to the width set by tw
"set noshowcmd              " Get rid of display of last command
set emoji                   " Enable emoji
set history=1000            " History limit
set fillchars+=vert:\▏      " requires a patched nerd font (try JetBrains Mono Nerd)
set inccommand=nosplit      " Visual feedback while substituting
setlocal textwidth=110      " Set this to have long lines wrap inside comments
"set wildmode=longest,list   " get bash-like tab completions
filetype plugin indent on   " allows auto-indenting depending on file type
syntax on                   " syntax highlighting
set incsearch ignorecase smartcase hlsearch             " Highlight text while searching
autocmd TermOpen * setlocal nonumber norelativenumber   " No line number for terminal
" let g:python3_host_prog = '/usr/bin/python3'
let g:python_host_prog = 'home/jotham/anaconda3/bin/python3.8'
let g:python_host_prog = '/usr/bin/python2'

"============= Keybindings =============
nnoremap <C-j> :m .+1<CR>==   " Move Line Down
set noshowmode                                         " Remove INSERT when editing text
nnoremap <C-k> :m .-2<CR>==   " Move Line Up
nnoremap <F3> :Autoformat<CR> " Formats Document
nnoremap <C-\> :Commentary    " Comment line
tnoremap <Esc> <C-\><C-n>     " Exit terminal mode
nmap <F5> :TagbarToggle<CR>   " Toggle Tagbar (Function defs)
nnoremap <F4> :UndotreeToggle<CR> " Toggle undotree

autocmd FileType apache setlocal commentstring=#\ %s "For Comment plug


" =================== PLUGINS ===================
call plug#begin("~/.config/nvim/plugged")

" MAIN
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' } " Install fzf
Plug 'junegunn/fzf.vim' "                             Fuzzy-file search
Plug 'gabrielelana/vim-markdown' "                    Vim-Markdown support
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  } "  Browser Markdown Preview
Plug 'joeytwiddle/sexy_scroller.vim' "                Smooth scroller
Plug 'tpope/vim-fugitive' "                           Git support
Plug 'airblade/vim-gitgutter' "                       Git Gutter
Plug 'mbbill/undotree' "                              Undo tree for vim

" Syntax, Langsupport, Format
Plug 'tmsvg/pear-tree' "                              Autoclosing brackets
Plug 'Chiel92/vim-autoformat' "                       Full file format
Plug 'dense-analysis/ale' "                           Linting and error highlighting
Plug 'neoclide/coc.nvim', {'branch': 'release'} "     Vscode like language completions
Plug 'vimlab/split-term.vim' "                        Provides split terminal in Neovim
Plug 'preservim/tagbar' "                             Shows function definitions
Plug 'ervandew/supertab' "                            Use tab for completion fill
Plug 'puremourning/vimspector' "                      Debugger

" Comments, Indents, Coloring
"Plug 'vim-airline/vim-airline' "                      Cool status-line
"Plug 'vim-airline/vim-airline-themes' "               Themes for status-line
Plug 'itchyny/lightline.vim'
Plug 'preservim/nerdtree' "                           File Browser
Plug 'ryanoasis/vim-devicons' "                       Icons
Plug 'octol/vim-cpp-enhanced-highlight' "             Enchanced C++ Highlighting
Plug 'tpope/vim-commentary' "                         Commenter
 
call plug#end()

" THEMES
" --------
" gruvbox
" ayu
" onedark
" wal

set termguicolors "                                   Enable true colors support, Opaque background
let ayucolor="mirage"
let g:gruvbox_transparent_bg = 0
colorscheme gruvbox

"                +++++++++++++++++++ GLOBAL CONFIG ++++++++++++++++++

" ===================== Rainbow brackets =====================
let g:rainbow_active = 0

" ==================== Pear-Tree  ====================
let g:pear_tree_repeatable_expand = 0

" ====================== Sexy scroller ======================
let g:SexyScroller_ScrollTime  = 10    " Time taken for buffer to scroll one line or column
let g:SexyScroller_CursorTime  = 3     " Time taken for cursor to travel one line
let g:SexyScroller_MaxTime     = 500   " Maximum amount of time that longer scrolls can take
let g:SexyScroller_EasingStyle = 3     " Choose easing time

"==================== ALE ====================
let g:ale_disable_lsp = 1
let g:ale_pattern_options = {'\.vim$': {'ale_enabled': 0}} " Disable Ale for .vim files
highlight ALEWarning ctermbg=DarkMagenta

"==================== Jedi ===================
let g:jedi#auto_initialization = 0
let g:jedi#completions_enabled = 0
let g:jedi#auto_vim_configuration = 0
let g:jedi#smart_auto_mappings = 0
let g:jedi#popup_on_dot = 0
let g:jedi#completions_command = ""
let g:jedi#show_call_signatures = "1"

"==================== Coc ====================
set hidden
set nobackup
set nowritebackup
set cmdheight=1
set updatetime=300
set shortmess+=c
set signcolumn=no

"==================== Indentline ================
"let g:indentLine_char = '|'
"let g:indentLine_first_char = '|'
let g:indentLine_showFirstIndentLevel = 1
let g:indentLine_setColors = 0

" ====================== Airline ==================
let g:airline_theme = 'hybrid'
let g:airline_powerline_fonts = 1
let g:airline_section_y = ""
let g:airline#extensions#tabline#enabled = 0
let g:airline#extensions#tabline#formatter = 'unique_tail'

" do not show error/warning section
let g:airline_section_error = ""
let g:airline_section_warning = ""

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

"======================= Super Tab ====================
let g:SuperTabDefaultCompletionType = "<c-n>"
