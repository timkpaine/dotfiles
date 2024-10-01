filetype plugin on
filetype indent on
syntax enable

" Mappings ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
" Map nerdtree toggle to F2 key
map <F2> :NERDTreeToggle<CR>
map j gj
map k gk
map 0 ^
map <space> /
map <c-space> ?
map <leader>bd :Bclose<cr>
map <leader>ba :1,1000 bd!<cr>
map <leader>te :tabedit <c-r>=expand("%:p:h")<cr>/
map <leader>cd :cd %:p:h<cr>:pwd<cr>
nmap <leader>w :w!<cr>
vnoremap <silent> * :call VisualSelection('f')<CR>
vnoremap <silent> # :call VisualSelection('b')<CR>

" Settings ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
set autoread
set backspace=indent,eol,start
set clipboard=unnamed
set encoding=utf8
set expandtab
set ffs=unix,dos,mac
set hlsearch
set ignorecase
set incsearch
set laststatus=2
set lazyredraw
set lbr
set magic
set mat=2
set nobackup
set noerrorbells
set noswapfile
set novisualbell
set nowb
set nu
set shiftwidth=2
set showmatch
set smartcase
set smarttab
set so=7
set t_vb=
set tabstop=2
set tm=500
set tw=500
set wildmenu
set wildignore=*.o,*~,*.pyc
set wrap "Wrap lines


try
  set switchbuf=useopen,usetab,newtab
  set stal=2
catch
endtry

autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif
set viminfo^=%

" Vundle Plugins ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
set rtp+=~/.vim/vundle.git/ 
call vundle#rc()

Bundle 'kien/ctrlp.vim'

Bundle 'Yggdroot/indentLine'

Bundle 'davidhalter/jedi-vim'
Bundle 'vim-scripts/indentpython.vim'

Bundle 'sheerun/vim-polyglot'
"Bundle 'mxw/vim-jsx'
Bundle 'plasticboy/vim-markdown'
Bundle 'nachumk/systemverilog.vim'

Bundle 'godlygeek/tabular'

Bundle 'vim-airline/vim-airline'
Bundle 'vim-airline/vim-airline-themes'

Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/nerdcommenter'
Bundle 'Xuyuanp/nerdtree-git-plugin'
Bundle 'tiagofumo/vim-nerdtree-syntax-highlight'
Bundle 'PhilRunninger/nerdtree-visual-selection'

Bundle 'tpope/vim-commentary'
Bundle 'airblade/vim-gitgutter'

Bundle 'dense-analysis/ale'

" Theme ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
set background=light


highlight ALEError ctermbg=DarkMagenta ctermfg=White  cterm=underline 
highlight ALEWarning ctermbg=DarkMagenta ctermfg=White  cterm=underline

match Todo /TODO/
match Error /FIXME/

highlight Todo ctermbg=cyan ctermfg=magenta guibg=cyan guifg=magenta
highlight Error ctermbg=magenta ctermfg=cyan guibg=magenta guifg=cyan

autocmd InsertEnter,InsertLeave * set cul!
set cursorline

"highlight CursorLine cterm=NONE ctermbg=black ctermfg=NONE guibg=darkblue guifg=NONE
"autocmd InsertEnter * highlight CursorLine cterm=NONE ctermbg=lightgreen ctermfg=NONE guibg=lightgreen guifg=NONE
"autocmd InsertLeave * highlight CursorLine cterm=NONE ctermbg=darkblue ctermfg=NONE guibg=darkblue guifg=NONE

"TODO
"FIXME

colorscheme koehler

"autocmd vimenter * NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
map <C-n> :NERDTreeToggle<CR>

