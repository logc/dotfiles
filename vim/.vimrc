" ----------------------------------------------------------------------------
" Personal preferences for vim editor
"
call pathogen#infect()
syntax on
filetype plugin on              " use the file type plugins
filetype indent on
color Tomorrow
set history=800                 " keep 800 lines of history
set ruler                       " show the cursor position
set tags=tags;/                 " find tags in current directory, else look in each parent directory
set mouse=a
set pastetoggle=<F2>
set backspace=indent,eol,start
set laststatus=2
set term=screen-256color

" Highlight right margin
set textwidth=79
"set colorcolumn=+1
"execute "set colorcolumn=" . join(range(81,335), ',')
"highlight ColorColumn ctermbg=9
"highlight OverLength ctermbg=red ctermfg=white guibg=#592929
"match OverLength /\%81v.*/


" ----------------------------------------------------------------------------
" VARIABLE DEFINITIONS
let mapleader="\<Space>"

let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/](target|dist)|(\.(swp|ico|git|svn))$',
  \ 'file': '\v\.(o|a|so|pyc)$'
  \ }
let g:ctrlp_extensions = ['tag', 'buffertag', 'quickfix', 'dir', 'rtscript',
                          \ 'undo', 'line', 'changes', 'mixed', 'bookmarkdir']

let g:SuperTabDefaultCompletionType = "context"
let g:airline#extensions#tabline#enabled = 1

autocmd FileType c,cpp,java           let b:comment_leader = '// '
autocmd FileType sh,ruby,python,cfg   let b:comment_leader = '# '
autocmd FileType haskell,sql          let b:comment_leader = '-- '
autocmd FileType racket,lisp          let b:comment_leader = '; '

" ----------------------------------------------------------------------------
"  MAPS
"

" Quickly edit/reload the vimrc file
nnoremap <silent> <leader>ev :tabe $MYVIMRC<CR>
nnoremap <silent> <leader>sv :so $MYVIMRC<CR>

" Change directory to current buffer
nnoremap <leader>d :cd %:h<CR>:pwd<CR>

" Comment/uncomment
nnoremap <leader>c :s/^/<C-R>=escape(b:comment_leader,'\/')<Return>/<Return>
nnoremap <leader>v :s/^<C-R>=escape(b:comment_leader,'\/')<Return>//<Return>

" Open tag under cursor in a new split
nnoremap <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>

" Go to left tab
nnoremap gr gT

" Go to next split
nnoremap <Leader>w <C-w><C-w>

" Show buffer list
nnoremap <Leader>b :buffers<CR>

" Move through buffers
nnoremap <Leader><right> <ESC>:bn<CR>
nnoremap <Leader><left> <ESC>:bp<CR>

" Copy to and paste from OS clipboard
"set clipboard=unnamed
vnoremap <F3> "+y
nnoremap <F3> "+p

nnoremap <Leader>o :CtrlP<CR>
nnoremap <Leader>s :w<CR>
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
