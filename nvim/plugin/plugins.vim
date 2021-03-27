call plug#begin("~/.config/nvim/plugged")

" MAIN
Plug 'puremourning/vimspector'           " Debugger
Plug 'tpope/vim-commentary'              " Commenter
Plug 'itchyny/lightline.vim'             " Status bar
Plug 'junegunn/goyo.vim'                 " Minimal vim
Plug 'tpope/vim-fugitive'                " Git support
Plug 'joeytwiddle/sexy_scroller.vim'     " Smooth scroller
Plug 'preservim/tagbar'                  " Shows function definitions
Plug 'vimlab/split-term.vim'             " Provides split terminal in Neovim
Plug 'tpope/vim-surround'                " Surround manipulation
Plug 'tmsvg/pear-tree'                   " Autoclosing brackets
Plug 'mbbill/undotree'                   " Undo tree for vim
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all'} " Install fzf

" Syntax, Langsupport, Format
Plug 'gabrielelana/vim-markdown'         " Vim-Markdown support
Plug 'fatih/vim-go'                      " Golang support
Plug 'octol/vim-cpp-enhanced-highlight'  " Enchanced C++ Highlighting
Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  } "  Browser Markdown Preview

" Themes, Comments, Indents
Plug 'preservim/nerdtree'                " File Browser
Plug 'ryanoasis/vim-devicons'            " Icons

" THEMES
Plug 'b4skyx/serenade'                   " serenade     
Plug 'morhetz/gruvbox'                   " gruvbox
Plug 'owickstrom/vim-colors-paramount'   " paramount
Plug 'glepnir/oceanic-material'          " oceanic_material
Plug 'arcticicestudio/nord-vim'          " nord
Plug 'co1ncidence/mountaineer.vim'       " mountaineer
Plug 'whatyouhide/vim-gotham'            " gotham
Plug 'ajmwagar/vim-deus'                 " deus

call plug#end()

colorscheme gruvbox

"          +++++++++++++++++++ GLOBAL CONFIG ++++++++++++++++++

" ====================== Sexy scroller ======================
let g:SexyScroller_ScrollTime  = 10    " Time taken for buffer to scroll one line or column
let g:SexyScroller_CursorTime  = 3     " Time taken for cursor to travel one line
let g:SexyScroller_MaxTime     = 500   " Maximum amount of time that longer scrolls can take
let g:SexyScroller_EasingStyle = 3     " Choose easing time
