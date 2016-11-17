" ----------------------------------------------------------------------------
" Personal preferences for vim editor
"
"call pathogen#infect()
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()
syntax on
filetype plugin on              " use the file type plugins
filetype indent on
color monokai
set history=800                 " keep 800 lines of history
set ruler                       " show the cursor position
set tags=tags;/                 " find tags in current directory, else look in each parent directory
set mouse=a
set backspace=indent,eol,start
set laststatus=2
set pastetoggle=<F2>
if !has('nvim')
    set term=screen-256color
endif

" Highlight right margin
"set colorcolumn=+1
"execute "set colorcolumn=" . join(range(81,335), ',')
"highlight ColorColumn ctermbg=9
"highlight OverLength ctermbg=red ctermfg=white guibg=#592929
"match OverLength /\%81v.*/


" ----------------------------------------------------------------------------
" VARIABLE DEFINITIONS
let mapleader="\<Space>"

" --------------------------------------------
"  OMNICOMPLETION
set completeopt-=preview
set completeopt=longest,menuone
" --------------------------------------------


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
let g:syntastic_python_flake8_args="--max-line-length=80"
let g:syntastic_enable_racket_racket_checker = 1
let g:syntastic_racket_racket_args="--load"

let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/](target|dist)|(\.(swp|ico|git|svn))$',
  \ 'file': '\v\.(o|a|so|pyc)$'
  \ }
let g:ctrlp_extensions = ['tag', 'dir']

let g:SuperTabDefaultCompletionType = "context"
let g:airline#extensions#tabline#enabled = 1

let g:clang_library_path="/opt/local/libexec/llvm-3.5/lib/libclang.dylib"

let g:slime_target = "tmux"
" ----------------------------------------------------------------------------
"  MAPS
"

" Omnicompletion: change behavior of <Enter> key when popup menu is visible. It will
" simply select the highlighted menu item, just as <C-Y> does.
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" MAPS INCLUDING LEADER

" Quickly edit/reload the vimrc file
nnoremap <silent> <leader>ev :tabe $MYVIMRC<CR>
nnoremap <silent> <leader>sv :so $MYVIMRC<CR>

" Go to next window
nnoremap <Leader>w <C-w><C-w>

" Move through buffers
nnoremap <leader>f :bn<CR>
nnoremap <leader>a :bp<CR>

" Leave Vim as background process
nnoremap <leader>q <C-z>

" Open files via Ctrl-P plugin
nnoremap <leader>o :CtrlP<CR>

" Use Git via Fugitive plugin
nnoremap <leader>g :Gstatus<CR>

" Paste and indent according to current context
nnoremap <leader>p p=`]

" Reflow paragraph to 80 columns
nnoremap <leader>d vipgq

" Maximize split window
nnoremap <leader>_ <C-w>_

" Give equal size to all splits
nnoremap <leader>= <C-w>=

" Call make silently
nnoremap <leader>m :silent make TARGET=%:r\|redraw!\|cc<CR>
" Same as previous, but does not take automatically to location of the first
" error, only show the quickfix window
"nnoremap <leader>m :silent make\|redraw!\|cw<CR>

" MAPS INCLUDING CTRL

" Open tag under cursor in a new split
nnoremap <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>

" OTHER MAPS

" Go to left tab
nnoremap gr gT

" Copy to and paste from OS clipboard
"set clipboard=unnamed
vnoremap <F3> "+y
nnoremap <F3> "+p

nnoremap <F4> :r !date "+\%Y-\%m-\%d"<CR>
