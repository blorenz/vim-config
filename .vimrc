filetype off
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

set foldmethod=indent
set foldlevel=99
set hidden

set number
set hlsearch

map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

map <leader>td <Plug>TaskList
colorscheme evening

map <leader>g :GundoToggle<CR>

map <c-\> :s!$!\\!<CR><Esc>
map <c-e> i<CR><Esc>
syntax on                           " syntax highlighing
filetype on                          " try to detect filetypes
filetype plugin indent on    " enable loading indent file for filetype
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
let g:pyflakes_use_quickfix = 0

let g:pep8_map='<leader>8'
let javascript_enable_domhtmlcss=1

au FileType python set omnifunc=pythoncomplete#Complete
let g:SuperTabDefaultCompletionType = "context"

set completeopt=menuone,longest,preview

map <leader>j :RopeGotoDefinition<CR>
map <leader>r :RopeRename<CR>set omnifunc=pythoncomplete#Complete

nmap <leader>a <Esc>:Ack!

map <leader>dt :set makeprg=python\ manage.py\ test\|:call MakeGreen()<CR>

" Execute the tests
nmap <silent><Leader>tf <Esc>:Pytest file<CR>
nmap <silent><Leader>tc <Esc>:Pytest class<CR>
nmap <silent><Leader>tm <Esc>:Pytest method<CR>
" cycle through test errors
nmap <silent><Leader>tn <Esc>:Pytest next<CR>
nmap <silent><Leader>tp <Esc>:Pytest previous<CR>
nmap <silent><Leader>te <Esc>:Pytest error<CR>

" Enable CursorLine
set cursorline

" Default Colors for CursorLine
highlight  CursorLine ctermbg=1 ctermfg=None

" Change Color when entering Insert Mode
autocmd InsertEnter * highlight  CursorLine ctermbg=Blue ctermfg=None

" Revert Color to default when leaving Insert Mode
autocmd InsertLeave * highlight  CursorLine ctermbg=1 ctermfg=None

highlight Cursor ctermbg=green ctermfg=green

set noswapfile
set nobackup
set nowb

set autoread
set autoindent
set smartindent
set smarttab
set shiftwidth=4
set softtabstop=4
set tabstop=4
set expandtab

  
