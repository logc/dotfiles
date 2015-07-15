" ----------------------------------------------------------------------------
" Personal preferences for vim editor
"
call pathogen#infect()
syntax on
filetype plugin on              " use the file type plugins
filetype indent on
color solarized
set history=800                 " keep 800 lines of history
set ruler                       " show the cursor position
set tags=tags;/                 " find tags in current directory, else look in each parent directory
set mouse=a
set backspace=indent,eol,start
set laststatus=2
set term=screen-256color

" Highlight right margin
"set colorcolumn=+1
"execute "set colorcolumn=" . join(range(81,335), ',')
"highlight ColorColumn ctermbg=9
"highlight OverLength ctermbg=red ctermfg=white guibg=#592929
"match OverLength /\%81v.*/


" ----------------------------------------------------------------------------
" VARIABLE DEFINITIONS
let mapleader="\<Space>"

" Syntastic suggested settings
" --------------------------------------------
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
" --------------------------------------------
let g:syntastic_python_pylint_args="--rcfile=~/.pylintrc"
let g:syntastic_python_flake8_args="--max-line-length=120"

let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/](target|dist)|(\.(swp|ico|git|svn))$',
  \ 'file': '\v\.(o|a|so|pyc)$'
  \ }
let g:ctrlp_extensions = ['tag', 'buffertag', 'quickfix', 'dir', 'rtscript',
                          \ 'undo', 'line', 'changes', 'mixed', 'bookmarkdir']
let g:ctrlp_prompt_mappings = {
    \ 'AcceptSelection("e")': ['<c-t>'],
    \ 'AcceptSelection("t")': ['<cr>', '<2-LeftMouse>'],
    \ }

let g:SuperTabDefaultCompletionType = "context"
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='papercolor'

" ----------------------------------------------------------------------------
"  MAPS
"

" Quickly edit/reload the vimrc file
nnoremap <silent> <leader>ev :tabe $MYVIMRC<CR>
nnoremap <silent> <leader>sv :so $MYVIMRC<CR>

" Change directory to current buffer
nnoremap <leader>d :cd %:h<CR>:pwd<CR>

" Open tag under cursor in a new split
nnoremap <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>

" Go to left tab
nnoremap gr gT

" Go to next window
nnoremap <Leader>w <C-w><C-w>
" Move through buffers
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Move through buffers
nnoremap <Leader><right> <ESC>:bn<CR>
nnoremap <Leader><left> <ESC>:bp<CR>

set pastetoggle=<F2>
" Copy to and paste from OS clipboard
"set clipboard=unnamed
vnoremap <F3> "+y
nnoremap <F3> "+p

nnoremap <Leader>o :CtrlP<CR>
nnoremap <Leader>g :Gstatus<CR>

" toggle folds open and close with space if we are in a fold, otherwise normal
nnoremap <silent> <Space> @=(foldlevel('.')?'za':"\<Space>")<CR>

" Paste and indent according to current context
nnoremap <Leader>p p=`]

" Reflow paragraph to 80 columns
nnoremap <Leader>f vipgq

" Maximize split window
nnoremap <Leader>_ <C-w>_

" Give equal size to all splits
nnoremap <Leader>= <C-w>=
