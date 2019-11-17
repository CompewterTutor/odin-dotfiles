" call plug#begin()
" Make sure you use single quotes
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim

"VIM customizations
" General Config {

"set digraph "enable input of special characters by a digraph, ex a -> ^H -> : => umlaut a

set hid "Allow hiding buffers even though they contain mods which haven't been written to associated file

set ru "ruler show ruler for cursor in its current position
set bs=2 "backspace - backspace with this value will move the cursor over autoindent and SOL/EOL

set fo=cqrt "formatoptions - adding r flag to avoid inserting comment tags on new lines

set ls=2 "laststatus - show a status line even with one window

set shm=at "shortmess - shortens all msgs and avoids scrolling/press a key prompt

"set tw=72 "textwidth - explicitly sets the width of text to 72

"whichwrap - select which commands wrap the cursor around the line borders (left, right, h, l)
set ww=<,>,h,l
"set list "list listchars - options for hidden characters like EOL, TAB, trailing spaces

set lcs=tab:»·
set lcs+=trail:·

"viminfo - save session info
set vi=%,'50
set vi+=\"100,:100
set vi+=n~/.viminfo

"}

"Colors {
syntax enable
"}

" Spaces and Tabs {
set tabstop=4
set softtabstop=4
set expandtab
"add recursive sub directories to path
set path+=**
" }

" Buffers {
"This allowes for buffers to be hidden when they've been modified.
set hidden

"to open a new empty buffer
" this replaces tabnew 
nmap <leader>T :enew<cr>

"move to next buffer
nmap <leader>l :bnext<CR>
"previous buffer
nmap <leader>h :bprevious<CR>

"Close the current buffer and move to the previous one
" replicates idea of closing a tab
nmap <leader>bq :bp <BAR> bd #<CR>
"buffer list
nmap <leader>bl :ls<CR>

" }

au BufNewFile,BufRead *.py
		\ set tabstop=4
		\ set softtabstop=4
		\ set shiftwidth=4
		\ set textwidth=79
		\ set expandtab
		\ set autoindent
		\ set fileformat=unix

let python_highlight_all=1

au BufNewFile,BufRead *.js, *.html, *.css
		\ set tabstop=2
		\ set softtabstop=2
		\ set shiftwidth=2

"UI Config {
set number
set showcmd
set cursorline
filetype indent on
set wildmenu
"set wildignore
"set wildignorecase
set lazyredraw
set showmatch
" }

" SEARCHING {
set incsearch " incremental search
set hlsearch  " highlight search

nnoremap <leader><space> :nohlsearch<CR> "turn off search highlight
" }

" FOLDING {
"set foldenable
"set foldlevelstart
"set foldnestmax=10
" }

" MOVEMENT {

nnoremap j gj 		" move vertically by visual line
nnoremap k gk

nnoremap B ^ 		" move to beginning/end of line
nnoremap E $

nnoremap $ <nop> 	"make $ and ^ do nothing
nnoremap ^ <nop>
" }

"LEADER SHORTCUTS {
let mapleader=","
nnoremap <Space> <nop>
"jk is escape
inoremap jk <esc>
"toggle gundo
nnoremap <leader>u :GundoToggle<CR>

" edit vimrc/zshrc and load vimrc bindings
nnoremap <leader>ev :vsp $MYVIMRC<CR>
nnoremap <leader>ez :vsp ~/.zshrc<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>


nnoremap <leader>a :Ag

"}

"CtrlP Settings {
"let g:ctrlp_match_window = 'bottom,order:ttb' "order matching files top to bottom
"let g:ctrlp_switch_buffer = 0 " open files in new buffers
"let g:ctrlp_working_path_mode = 0 "change working directory during vim session and have ctrlp respect that
"let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""' "make ctrlP work with Ag

"}
" Plugins {
call vundle#begin()


Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-sensible'
Plugin 'tpope/vim-fugitive'
Plugin 'jeetsukumaran/vim-buffergator'
Plugin 'Valloric/YouCompleteMe'
"Plugin 'scrooloose/syntastic'
Plugin 'vim-syntastic/vim-syntastic'
Plugin 'nvie/vim-flake8'
"Plugin 'SirVer/ultisnips'
Plugin 'edsono/vim-matchit'
Plugin 'honza/vim-snippets'
Plugin 'justinmk/vim-sneak'
Plugin 'kien/ctrlp.vim'
Plugin 'majutsushi/tagbar'
Plugin 'plasticboy/vim-markdown'
Plugin 'scrooloose/nerdcommenter'
Plugin 'tpope/vim-sleuth'
Plugin 'tpope/vim-surround'
Plugin 'tyru/open-browser.vim'
Plugin 'vim-scripts/a.vim'
"Plugin 'Figlet.vim'
Plugin 'fadein/vim-figlet'

" User Interface
Plugin 'scrooloose/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'ryanoasis/vim-devicons'
Plugin 'easymotion/vim-easymotion'
Plugin 'airblade/vim-gitgutter'
Plugin 'mhinz/vim-startify'
" Install nerdfont to enable devicons below ->



" Languages
Plugin 'stanangeloff/php.vim'
Plugin 'tpope/vim-rails'
Plugin 'pangloss/vim-javascript'
Plugin 'vim-ruby/vim-ruby'
Plugin 'fatih/vim-go'
Plugin 'othree/html5.vim'
Plugin 'elzr/vim-json'
Plugin 'mxw/vim-jsx'
Plugin 'L9'
Plugin 'digitaltoad/vim-jade'
Plugin 'rust-lang/rust.vim'
Plugin 'leafgarland/typescript-vim'
Plugin 'ap/vim-css-color'
Plugin 'ekalinin/dockerfile.vim'
Plugin 'othree/javascript-libraries-syntax.vim'
Plugin 'maksimr/vim-jsbeautify'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'chrisbra/csv.vim'
Plugin 'joonty/vdebug'
Plugin 'sukima/xmledit'
Plugin 'vim-scripts/indentpython.vim'

" Integrations
Plugin 'mattn/gist-vim'
Plugin 'tpope/vim-eunuch'
Plugin 'rking/ag.vim'


" Editing
Plugin 'godlygeek/tabular'
" Plugin 'ervandew/supertab'
Plugin 'mattn/emmet-vim'
Plugin 'tpope/vim-repeat'
Plugin 'shougo/unite.vim'
Plugin 'raimondi/delimitmate'
Plugin 'sjl/gundo.vim'
Plugin 'taglist.vim'
Plugin 'groenewege/vim-less'
Plugin 'edkolev/tmuxline.vim'
Plugin 'benmills/vimux'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'tpope/vim-abolish'
Plugin 'bkad/camelcasemotion'

" Color Schemes
"Plugin 'vim-colors-solarized'
Plugin 'tomasr/molokai'
Plugin 'flazz/vim-colorschemes'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'morhetz/gruvbox'
Plugin 'sjl/badwolf'

"Add all Plugins before the following line
call vundle#end() "required
filetype plugin indent on "required
" }
"help
"PluginList
"PluginInstall
"PluginSearch foo
":PluginClean confirms removal of unused plugins; append ! to autoapprove
"removal
"nerdtree shit"
"open nerdtree on vim open and switch to editor pane
"autocmd vimenter * NERDTree
"autocmd vimenter * wincmd p
" colorscheme gruvbox
map <C-n> :NERDTreeToggle<CR>
" Syntastic settings
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

"let g:syntastic_always_populate_loc_list = 1
"let g:synastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0
" <Ctrl - l> redraws the screen and removes any search highlighting
nnoremap <silent> <C-l> :nohl<CR><C-l>
"let g:ycm_rust_src_path = '~/rust/src'
set background=dark
"allow for powerline fonts
let g:airline_powerline_fonts=1
" enable airline list of buffers
let g:airline#extensions#tabline#enabled = 1
" show just the filename
let g:airline#extensions#tabline#fnamemod = ":t"

"Python VirtualEnv handling
"py << EOF
"import os
"import sys
"if 'VIRTUAL_ENV' in os.environ
""		project_base_dir = os.environ['VIRTUAL_ENV']
""		activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
""		execfile(activate_this, dict(__file__=activate_this))
"EOF
