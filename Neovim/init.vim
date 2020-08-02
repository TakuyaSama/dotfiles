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
let g:airline_theme='simple'

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
Plug 'sainnhe/forest-night'

"C Vim
Plug 'vim-scripts/c.vim'

"COC
"Plug 'neoclide/coc.nvim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Initialize plugin system
call plug#end()

" Forest Night Theme
" important!!
set termguicolors

" the configuration options should be placed before `colorscheme forest-night`
let g:forest_night_enable_italic = 1
let g:forest_night_disable_italic_comment = 1

colorscheme forest-night

" HTML Snippet/Skeleton Map
nnoremap ,html :-1read $HOME/.config/nvim/snippets/skeleton.html<CR>3jwf>a

"42-HEADER CONFIG
let $USER = 'adiaz-lo'
let $MAIL = $USER . '@student.42madrid.com'
"nmap <f1> :Stdheader<CR>
