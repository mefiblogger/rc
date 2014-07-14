set history=500    " 
set number         " syntax highligt, line numbers
set cursorline     " highlight current line
set syntax=on      " 

syntax enable

set ruler          " bottom status bar
set laststatus=2   " always show status bar
set statusline=%{strftime(\"%I:%M\")}\ \(%3.3{v:shell_error}\)\ %m\ %-.40F\ %-y%=%{strlen(&fenc)?&fenc:&enc}\ \[%{v:operator}\]\ %5.l,%-3.c\ \[0x%02.B\]\ %3.p%%

set incsearch      " live search
set ignorecase     " ignore case in /-style search
set smartcase      " *-style searches are case-sensitive
set visualbell     " no ding-dong

set nobackup       " 
set nowb           " no swap, no backup
set noswapfile     " 

set expandtab      " expand tab to spaes
set shiftwidth=4   " 
set tabstop=4      " tab size 
set smarttab       " 
set ai             " smart indent at new lines
set si             " 

" Vimdiff like a pro
if &diff
    nnoremap <C-p> [c
    nnoremap <C-n> ]c
endif

" Switching tabs like a pro
nnoremap <C-j> :tabprevious<CR>
nnoremap <C-k> :tabnext<CR>
nnoremap <C-t> :tabnew<CR>
inoremap <C-j> <Esc>:tabprevious<CR>i
inoremap <C-k> <Esc>:tabnext<CR>i
inoremap <C-t> <Esc>:tabnew<CR

" Moving lines up or down
nnoremap <A-S-j> :m .+1<CR>
nnoremap <A-S-k> :m .-2<CR>
inoremap <A-S-j> <Esc>:m .+1<CR>==gi
inoremap <A-S-k> <Esc>:m .-2<CR>==gi
vnoremap <A-S-j> :m '>+1<CR>gv=gv
vnoremap <A-S-k> :m '<-2<CR>gv=gv

" Pressing F2 will toggle highlighting the cursor's current position
highlight CursorLine   term=reverse cterm=NONE ctermbg=darkblue guibg=darkblue
highlight CursorColumn term=reverse cterm=NONE ctermbg=darkblue guibg=darkblue
nnoremap <F2> :set cursorline! cursorcolumn!<CR>

" Plugins
filetype plugin on
filetype indent on 
autocmd FileType php set omnifunc=phpcomplete#CompletePHP

" Set mapleader to ,
let mapleader = ','
