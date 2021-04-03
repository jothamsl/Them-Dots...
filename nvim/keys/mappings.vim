" Better nav for omnicomplete 
inoremap <expr> <c-j> ("\<C-n>")
inoremap <expr> <c-k> ("\<C-p>")

" Use alt + hjkl to resize windows
nnoremap <M-j>    :resize -2<CR>
nnoremap <M-k>    :resize +2<CR>
nnoremap <M-h>    :vertical resize -2<CR>
nnoremap <M-l>    :vertical resize +2<CR>

" Alternate way to save
nnoremap <C-s> :w<CR>

" Alternate way to quit
nnoremap <C-Q> :wq!<CR>

" <TAB>: completion.
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"

" Better window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Move line 
nnoremap <C-k> :m .-2<CR>==   " Move Line Up
nnoremap <C-j> :m .+1<CR>==   " Move Line Down

tnoremap <Esc> <C-\><C-n>     " Exit terminal mode
nmap <F5> :TagbarToggle<CR>   " Toggle Tagbar (Function defs)
nnoremap <C-\> :Commentary    " Comment line
