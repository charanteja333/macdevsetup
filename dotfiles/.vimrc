" Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible
" =============== Pathogen Initialization ===============
" This loads all the plugins in ~/.vim/bundle
" Use tpope's pathogen plugin to manage all other plugins

runtime bundle/tpope-vim-pathogen/autoload/pathogen.vim
call pathogen#infect()
call pathogen#helptags()

" =============== Vundle Intialization ==================
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'vim-scripts/taglist.vim'
Bundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Bundle 'tpope/vim-fugitive'
Bundle 'scrooloose/nerdtree'
Bundle 'klen/python-mode'
Plugin 'altercation/vim-colors-solarized'
Bundle 'hdima/python-syntax'
Bundle 'vim-scripts/Conque-Shell'
Bundle 'FuzzyFinder'
Bundle 'ctrlpvim/ctrlp.vim'
Bundle 'terryma/vim-multiple-cursors'
Plugin 'SirVer/ultisnips'
" All of your Plugins must be added before the following line
call vundle#end()            " required



" ================ General Config ====================
filetype plugin on             "Detect the file type that is edited
filetype indent on
set number                      "Line numbers are good
set backspace=indent,eol,start  "Allow backspace in insert mode
set history=1000                "Store lots of :cmdline history
set showcmd                     "Show incomplete cmds down the bottom
set showmode                    "Show current mode down the bottom
set gcr=a:blinkon0              "Disable cursor blink
set visualbell                  "No sounds
set autoread                    "Reload files changed outside vim
let python_highlight_all = 1    "Enable all python syntax highlighting features
set showmatch                   "Show the matching part of the pair for [] {} and ()
set cursorline                  "Show a visual line under the cursor's current line
set nobackup	                " No backup
set noswapfile                  "No swap file generation
set smartcase                   "case sensitive searches
set background=dark             "Set theme as solarized dark
colorscheme solarized
set showtabline=2                "Always show tabs
set wildmode=longest:full        "Command line completion
set wildmenu
set ffs=unix,dos,mac             "File system files to detect 
set t_Co=256                     "Set vim to 256 colors


" This makes vim act like all other editors, buffers can
" exist in the background without being in a window.
" http://items.sjbach.com/319/configuring-vim-right
set hidden

syntax on            "turn on syntax highlighting

" ================ Search Settings  =================

set incsearch        "Find the next match as we type the search
set hlsearch         "Highlight searches by default
set viminfo='100,f1  "Save up to 100 marks, enable capital marks

" ================ Persistent Undo ==================
" Keep undo history across sessions, by storing in file.
" Only works all the time.

set undodir=~/.vim/backups        "Place to store the undo histories
set undofile                      "Save undo's after file closes

" ================ Indentation ======================

"set autoindent
"set smartindent
set smarttab                          "Affects how <TAB> key presses are interpreted depending on where the cursor is.
set shiftwidth=4                      "To control the number of space characters that will be inserted when the tab key is pressed
set softtabstop=4                     "to control how many columns vim uses when you hit Tab in insert mode
set tabstop=4                         "To control the number of space characters that will be inserted when the tab key is pressed
set expandtab                         "To insert space characters whenever the tab key is pressed
set ruler                             "Ruler at the botom to indicate line and column number
set colorcolumn=120                   "Vertical colour line to indicate the maximum text to enter
set textwidth=120                     "Maximum text limit after which a word is wrapped


" Display tabs and trailing spaces visually
"set list listchars=tab:\ \ ,trail:·

set nowrap       "Don't wrap lines
set linebreak    "Wrap lines at convenient points


" ================ Folds ============================

set foldmethod=indent   "fold based on indent
set foldnestmax=3       "deepest fold is 3 levels
set nofoldenable        "dont fold by default
" ================ Scrolling ========================

set scrolloff=8         "Start scrolling when we're 8 lines away from margins
set sidescrolloff=15
set sidescroll=1

" ================Powerline setup ====================

 set laststatus=2        "Enable tool bar below to show the status

"================Nerd tree configuration===================
map <F2> :NERDTreeToggle<CR>     "Enable nerdtree with F2 key
let NERDTreeShowHidden=1

"================Python mode ==========================
set completeopt=menuone,preview
set omnifunc=syntaxcomplete#Complete

" Python-mode
" Activate rope
" Keys:
" K             Show python docs
" <Ctrl-Space>  Rope autocomplete
" <Ctrl-c>g     Rope goto definition
" <Ctrl-c>d     Rope show documentation
" <Ctrl-c>f     Rope find occurrences
" <Leader>b     Set, unset breakpoint (g:pymode_breakpoint enabled)
" [[            Jump on previous class or function (normal, visual, operator modes)
" ]]            Jump on next class or function (normal, visual, operator modes)
" [M            Jump on previous class or method (normal, visual, operator modes)
" ]M            Jump on next class or method (normal, visual, operator modes)
let g:pymode_rope = 1
" Documentation
let g:pymode_doc = 1
let g:pymode_doc_key = 'K'
"Linting
let g:pymode_lint = 1
let g:pymode_lint_checker = "pyflakes,pep8"
" Auto check on save
let g:pymode_lint_write = 1
" Support virtualenv
let g:pymode_virtualenv = 1
" Enable breakpoints plugin
let g:pymode_breakpoint = 1
let g:pymode_breakpoint_bind = '<leader>b'
" syntax highlighting
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
let g:pymode_syntax_space_errors = g:pymode_syntax_all
let g:pymode_options_colorcolumn = 0
let g:pymode_doc = 1
let g:pymode_doc_bind = 'K'
" Don't autofold code
let g:pymode_folding = 0
let g:pymode_indent = 1
let g:pymode_rope_show_doc_bind = '<Ctrl-c>d'
nmap <silent> <A-Up> :wincmd k<CR>
nmap <silent> <A-Down> :wincmd j<CR>
nmap <silent> <A-Left> :wincmd h<CR>
nmap <silent> <A-Right> :wincmd l<CR>
let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
"let &t_SR = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=2\x7\<Esc>\\"
let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
" to tab by number
 noremap <M>1 1gt
 noremap <M>2 2gt
 noremap <M>3 3gt
 noremap <M>4 4gt
 noremap <M>5 5gt

 map <C-Up> <Esc>:tabprev<CR>
 map <C-Down> <Esc>:tabnext<CR>
 map <C-n> <Esc>:tabnew
 let g:pymode_rope_lookup_project = 0
 "tagbar
 "nmap <F8> :TagbarToggle<CR>
