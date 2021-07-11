call plug#begin("~/.config/nvim/plugged")

" MAIN
Plug 'puremourning/vimspector'           " Debugger
Plug 'tpope/vim-commentary'              " Commenter
Plug 'itchyny/lightline.vim'             " Status bar
Plug 'junegunn/goyo.vim'                 " Minimal vim
Plug 'tpope/vim-fugitive'                " Git support
Plug 'joeytwiddle/sexy_scroller.vim'     " Smooth scroller
Plug 'preservim/tagbar'                  " Shows function definitions
Plug 'jiangmiao/auto-pairs'              " Autoclosing brackets
Plug 'mbbill/undotree'                   " Undo tree
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all'} " Install fzf

" Syntax, Langsupport, Format
Plug 'gabrielelana/vim-markdown'         " Vim-Markdown support
Plug 'sheerun/vim-polyglot'              " Multi-language support
Plug 'dense-analysis/ale'                " Linter
Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }
Plug 'Chiel92/vim-autoformat'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  } "  Browser Markdown Preview

" Themes, Comments, Indents
Plug 'preservim/nerdtree'                " File Browser
Plug 'ryanoasis/vim-devicons'            " Icons

" THEMES
Plug 'flazz/vim-colorschemes'          " All Colorschemes
Plug 'morhetz/gruvbox'                 " Gruvbox colorscheme
Plug 'dylanaraps/wal.vim'              " Pywal theme


call plug#end()

let ayucolor="light" " mirage, dark, light
set background=dark " For gruvbox
colorscheme gruvbox

" +++++++++++++++++++ GLOBAL CONFIG ++++++++++++++++++

" ====================== Sexy scroller ======================
let g:SexyScroller_ScrollTime  = 10    " Time taken for buffer to scroll one line or column
let g:SexyScroller_CursorTime  = 3     " Time taken for cursor to travel one line
let g:SexyScroller_MaxTime     = 500   " Maximum amount of time that longer scrolls can take
let g:SexyScroller_EasingStyle = 3     " Choose easing time

" ====================== Autoformat =======================
let g:formatters_verbosemode=1
let g:autoformat_autoindent = 1
let g:autoformat_retab = 1
let g:autoformat_remove_trailing_spaces = 1

" ====================== Deoplete =======================
" let g:deoplete#enable_at_startup = 1
" call deoplete#custom#option('ignore_sources', {'_': ['around', 'buffer']})
" maximum candidate window length
" call deoplete#custom#source('_', 'max_menu_width', 80)
