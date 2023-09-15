set runtimepath^=~/.vim runtimepath+=~/.vim/after
set nocompatible
filetype plugin on
set wildmode=longest,list,full
set number
set rnu
set numberwidth=1
syntax on
set foldmethod=syntax
let g:airline#extensions#tabline#enabled = 1

" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.config/nvim/plugged')

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align

" Any valid git URL is allowed
"Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Multiple Plug commands can be written in a single line using | separators

" Use release branch (recommend)

" On-demand loading
"Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
"Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using a non-master branch
"Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
"Plug 'fatih/vim-go', { 'tag': '*' }

" Plugin options
"Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
"Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

"Vim Airline & Vim Airline Themes
Plug 'vim-airline/vim-airline' | Plug 'vim-airline/vim-airline-themes' 

"42 Header
Plug '42Paris/42header'

"Forst Night Theme
Plug 'sainnhe/everforest'

if has('termguicolors')
	set termguicolors
endif

" Enable true color 启用终端24位色
if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

"Dark version
set background=dark

"Set contrast
let g:everforest_background = 'hard'

"Customize the cursor color, only works in GUI clients.
let g:everforest_cursor = 'aqua'

"Whether to show |hl-EndOfBuffer|.
let g:everforest_show_eob = 1

"Some plugins support highlighting error/warning/info/hint texts, by default
"these texts are only underlined, but you can use this option to also highlight
"the background of them.
let g:everforest_diagnostic_text_highlight = 1

"Some plugins support highlighting error/warning/info/hint lines, but this
"feature is disabled by default in this color scheme. To enable this feature,
"set this option to `1`.
let g:everforest_diagnostic_line_highlight = 1

"Some plugins can use virtual text feature of neovim to display
"error/warning/info/hint information, you can use this option to adjust the
"colors of it.
let g:everforest_diagnostic_virtual_text = 'colored'

"Some plugins can highlight the word under current cursor, you can use this
"option to control their behavior.

"    Available values: `'grey background'`, `'bold'`, `'underline'`, `'italic'`
"    Default value: `'grey background'` when not in transparent mode, `'bold'`
"    when in transparent mode.
let g:everforest_current_word = 'bold'

"The loading time of this color scheme is very long because too many file types
"and plugins are optimized. This feature allows you to load part of the code on
"demand by placing them in the `after/ftplugin` directory.

"Enabling this option will reduce loading time by approximately 50%.
let g:everforest_better_performance = 1

"C Vim
Plug 'vim-scripts/c.vim'

"COC
"Plug 'neoclide/coc.nvim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Initialize plugin system
call plug#end()

colorscheme everforest

"Airline
let g:airline_theme = 'everforest'

" HTML Snippet/Skeleton Map
nnoremap ,html :-1read $HOME/.config/nvim/snippets/skeleton.html<CR>3jwf>a

"42-HEADER CONFIG
let $USER = 'adiaz-lo'
let $MAIL = $USER . '@student.42madrid.com'
nmap <F1> :Stdheader<CR>

"Vim Configuration From 42
syntax on
set number
set autoindent
set ruler
set history=1000
set showcmd
set numberwidth=1
set clipboard=unnamed
set showmatch
set laststatus=2
set cursorline
"42 Config
"Activate indentation
filetype off
filetype plugin indent on
set smartindent
"Non-expanded, 4-wide tabulations
set tabstop=4
set shiftwidth=4
set noexpandtab
"Disable vi-compatibility
set nocompatible
"Real-world encoding
set encoding=utf-8
"Interpret modelines in files
set modelines=1
"Do not abandon buffers
set hidden
"Don't bother throttling tty
set ttyfast
"More useful backspace behavior
set backspace=indent,eol,start
"Use statusbar on all windows
set laststatus=2
"Better search
set ignorecase
set smartcase
set incsearch
set showmatch
set hlsearch
"Prevent backups when editing system files
au BufWrite /private/tmp/crontab.* set nowritebackup
au BufWrite /private/etc/pw.* set nowritebackup
"Source user configuration
if filereadable(expand("~/.myvimrc"))
	source ~/.myvimrc
endif
call plug#begin()
" Themes
Plug 'morhetz/gruvbox'
" IDE
	" EasyMotion
	Plug 'easymotion/vim-easymotion'
	" Nerdtree
	Plug 'preservim/nerdtree'
call plug#end()
colorscheme gruvbox
let g:gruvbox_contrast_dark = "hard"
let NERDTreeQuitOnOpen=1
let mapleader=" "
nmap <Leader>s <Plug>(easymotion-s2)
nmap <Leader>nt :NERDTreeFind<CR>
nmap <Leader>w :w<CR>
nmap <Leader>wq :wq<CR>
nmap <Leader>q :q<CR>
nmap <Leader>fq :q!<CR>
nmap <f1> :FortyTwoHeader<CR>
