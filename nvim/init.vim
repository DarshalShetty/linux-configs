" Don't try to be vi compatible
set nocompatible

" Helps force plugins to load correctly when it is turned back on below
filetype off

" TODO: Load plugins here (pathogen or vundle)

" Turn on syntax highlighting
syntax on

" For plugins to load correctly
filetype plugin indent on

" Sets the <leader> key
let mapleader = "-"

" Security
set modelines=0

" Show line numbers
set number

" Show file stats
set ruler

" Blink cursor on error instead of beeping (grr)
set visualbell

" enable mouse support
set mouse=a

" Encoding
set encoding=utf-8

" Whitespace 
set wrap 		"wraps text without changing buffer
set linebreak		"prevents wrapping to next line mid-word 
set shiftround		"if you set shift width to 7 and the first non blank character is at column 9 then '>>' will move it to the column 14 when 'shiftround' is set and to column 9+7=16 when it is not set.  The operator << will move it to the column 7 when 'shiftround' is set and 9-7=2 when it is not set.
"For what below 4 settings mean, refer to: 
"http://tedlogan.com/techblog3.html
set tabstop=4		"(maximum) width of a tab character
set shiftwidth=4	"controls how many columns text is indented with the reindent operations (<< and >>) and auto indentation
set softtabstop=4	"how many columns vim uses when you hit Tab in insert mode
set expandtab		"converts tabs in insert mode to spaces

" Cursor motion
set scrolloff=3		"lines to be shown above & below cursor
set backspace=indent,eol,start	"Intuitive backspacing in insert mode
set matchpairs+=<:> 	"add < & > to bracket matching
" use % to jump between pairs
runtime! macros/matchit.vim

"Set terminal title
set title

"Create 'tag' files for jumping in and out of 
"declarations in code (Requires ctags installed)
command! Maketags !ctags -R .

"Search down into subfolders when file searching
"Provides tab completion for all file related tasks
set path+=**

"make file/command completion better
set wildmenu
set wildmode=list:longest

"Keep a longer history
set history=100

" Move up/down editor lines
nnoremap j gj
nnoremap k gk

" Allow hidden buffers
set hidden

" Rendering
set ttyfast

" Status bar
set laststatus=2

" Last line
set showmode
set showcmd

"toggle current line and column highlight
nnoremap <Leader>c :set cursorline! cursorcolumn!<CR>

" Searching
nnoremap / /\v
vnoremap / /\v
set hlsearch
set incsearch
set ignorecase
set smartcase
set showmatch
nnoremap <leader><space> :let @/=''<cr> " clear search register
nnoremap <leader>* *<C-O>:%s///gn<CR>`` " get count of word under cursor (source: http://vim.wikia.com/wiki/Count_number_of_matches_of_a_pattern)

" Formatting
nnoremap <leader>q gqip

" Visualize tabs, trailing spaces and newlines
set listchars=tab:»·,trail:·,eol:¬
" Uncomment this to enable by default:
" set list " To enable by default
" Or use your leader key + l to toggle on/off
nnoremap <leader>l :set list!<CR> " Toggle tabs and EOL

" Color scheme (terminal)
set t_Co=256
set background=dark
let g:solarized_termcolors=256
let g:solarized_termtrans=1

" source: https://github.com/morhetz/gruvbox
colorscheme gruvbox

"A list of currently assigned custom shortcuts
"|<Leader>c| => toggles current line and column highlight
"|<leader><space>| => clear search register (also removes search highlights)
"|<leader>q| => format text
"|<leader>l| => Toggle tabs and EOL display
"|<leader>*| => get count of word under cursor 
