call plug#begin("~/.config/nvim/plugged")

" MAIN
"Plug 'puremourning/vimspector'           " Debugger
Plug 'itchyny/lightline.vim'             " Status bar
Plug 'junegunn/goyo.vim'                 " Minimal vim
Plug 'tpope/vim-fugitive'                " Git support
Plug 'joeytwiddle/sexy_scroller.vim'     " Smooth scroller
Plug 'preservim/tagbar'                  " Shows function definitions
Plug 'tpope/vim-commentary'              " Commenter
Plug 'jiangmiao/auto-pairs'              " Autoclosing brackets
Plug 'mbbill/undotree'                   " Undo tree
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all'} " Install fzf

" Syntax, Langsupport, Format
Plug 'gabrielelana/vim-markdown'         " Vim-Markdown support
Plug 'sheerun/vim-polyglot'              " Multi-language support
Plug 'dense-analysis/ale'                " Linter
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  } "  Browser Markdown Preview
"Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'google/vim-maktaba'
Plug 'google/vim-codefmt'
Plug 'google/vim-glaive'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/asyncomplete-lsp.vim'

" Themes, Comments, Indents
Plug 'preservim/nerdtree'                " File Browser
Plug 'ryanoasis/vim-devicons'            " Icons

" THEMES
Plug 'flazz/vim-colorschemes'          " All Colorschemes
Plug 'morhetz/gruvbox'                 " Gruvbox colorscheme
Plug 'dylanaraps/wal.vim'              " Pywal theme
Plug 'mangeshrex/uwu.vim'
Plug 'pacokwon/onedarkhc.vim'


call plug#end()

let ayucolor="mirage" " mirage, dark, light
set background=light " For gruvbox
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

" ====================== Glaive Format ======================
" Autoformat
augroup autoformat_settings
  autocmd FileType bzl AutoFormatBuffer buildifier
  autocmd FileType c,cpp,proto,javascript,arduino AutoFormatBuffer clang-format
  autocmd FileType dart AutoFormatBuffer dartfmt
  autocmd FileType go AutoFormatBuffer gofmt
  autocmd FileType gn AutoFormatBuffer gn
  autocmd FileType html,css,sass,scss,less,json AutoFormatBuffer js-beautify
  autocmd FileType java AutoFormatBuffer google-java-format
  autocmd FileType python AutoFormatBuffer yapf
  " Alternative: autocmd FileType python AutoFormatBuffer autopep8
  autocmd FileType rust AutoFormatBuffer rustfmt
  autocmd FileType vue AutoFormatBuffer prettier
augroup END
