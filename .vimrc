"Load plugins
execute pathogen#infect()
syntax enable
filetype plugin indent on

" fonts color
set t_Co=256
set background=dark
let g:solarized_termcolors=256
colorscheme railscasts

" General
set number                              " Show line numbers
set linebreak                           " Break lines at word (requires Wrap lines)
set showbreak=+++                       " Wrap-broken line prefix
set textwidth=80                        " Line wrap (number of cols)
set showmatch                           " Highlight matching brace
"set spell                               " Enable spell-checking
set visualbell                          " Use visual bell (no beeping)
 
set hlsearch                            " Highlight all search results
set smartcase                           " Enable smart-case search
set ignorecase                          " Always case-insensitive
set incsearch                           " Searches for strings incrementally
 
set autoindent                          " Auto-indent new lines
set expandtab                           " Use spaces instead of tabs
set smartindent                         " Enable smart-indent
set smarttab                            " Enable smart-tabs
"set softtabstop=8                       " Number of spaces per Tab
set softtabstop=0                       " Number of spaces per Tab
set tabstop=8
set expandtab
set shiftwidth=4
set smarttab

" Advanced
set confirm                             " Prompt confirmation dialogs
set ruler                               " Show row and column ruler information
 
set autowriteall                        " Auto-write all file changes
 
set undolevels=1000                     " Number of undo levels
set backspace=indent,eol,start          " Backspace behaviour

set mouse=a                             " Enable mouse use in all mode

set statusline=%{fugitive#statusline()}

"How can I open a NERDTree automatically when vim starts up if no files were
"specified?
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

"autocmd vimenter * NERDTree
map <F9> :NERDTreeToggle<CR>
map <C-a> GVgg<Cr>
map <C-n> :enew
map <C-o> :e . <Enter>
map <C-s> :w <Enter>
map <C-t> :tabnew <Enter>
map <C-i> >>
map <C-q> :close <Enter>
map <C-Q> :q! <Enter>
map <C-f> /

"How can I close vim if the only window left open is a NERDTree?
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" show powerline font symbols
let g:airline_powerline_fonts = 1

" Airline Theme
let g:airline_theme='dark'

if !exists('g:airline_symbols')
        let g:airline_symbols = {}
endif
