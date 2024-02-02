set nocompatible            " Disable compatibility to old-time vim
set shell=bash
set termguicolors
set showmatch               " Show matching parentheses
set ignorecase              " Case insensitive search
set mouse=v                 " Middle-click paste with mouse
set hlsearch                " Highlight search results
set incsearch               " Incremental search
set tabstop=2               " Number of columns occupied by a tab
set softtabstop=2           " See multiple spaces as tab stops
set expandtab               " Convert tabs to white spaces
set shiftwidth=2            " Width for auto-indents
set autoindent              " Indent a new line the same amount as the line just typed
set number                  " Show line numbers
set wildmode=longest,list   " Bash-like tab completions
set cc=80                   " Set an 80 column border for good coding style
set fileformats=unix,dos    " Set file formats to Unix and DOS (for cross-platform compatibility)
set encoding=utf-8          " Set encoding to UTF-8
set laststatus=2            " Always show status line
set ruler                   " Show the cursor position all the time
set nowrap                  " Disable line wrapping
"set cursorline              " Highlight current cursor line
set ttyfast                 " Speed up scrolling in Neovim
set clipboard=unnamedplus   " Use system clipboard
filetype plugin indent on   " Allow auto-indenting depending on file type
syntax on                   " Enable syntax highlighting
set mouse+=a                 " Enable mouse click
set autochdir
set guifont=UbuntuMono\ Nerd\ Font:h12
set hidden
" set spell                 " Enable spell check (may need to download language package)
" set noswapfile            " Disable creating swap file
" set backupdir=~/.cache/nvim " Directory to store backup files

" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin(glob('~/.config/nvim/autoload/plugged'))
" The default plugin directory will be as follows:
"   - Vim (Linux/macOS): '~/.vim/plugged'
"   - Vim (Windows): '~/vimfiles/plugged'
"   - Neovim (Linux/macOS/Windows): stdpath('data') . '/plugged'
" You can specify a custom plugin directory by passing it as the argument
"   - e.g. `call plug#begin('~/.vim/plugged')`
"   - Avoid using standard Vim directory names like 'plugin'
" Themes
"Plug 'Tsuzat/NeoSolarized.nvim', { 'branch': 'master' }

"Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'
" Any valid git URL is allowed
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Multiple Plug commands can be written in a single line using | separators
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
Plug 'preservim/nerdtree'
"Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using a non-default branch
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Vim Airline and Themes
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
Plug 'fatih/vim-go', { 'tag': '*' }
Plug 'jiangmiao/auto-pairs'
" Plugin options
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin terminal
Plug 'akinsho/toggleterm.nvim', {'tag' : 'v1.*'}
"lua require("toggleterm").setup {}

" Plugin outside ~/.vim/plugged with post-update hook
"
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
" Unmanaged plugin (manually installed and updated)
Plug '~/my-prototype-plugin'
Plug 'ryanoasis/vim-devicons'
" plugin for spinnet
Plug 'junegunn/goyo.vim', { 'for': 'markdown' }
Plug 'alvan/vim-closetag'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
source ~/.config/nvim/vim-plugins/easymotion.vim
source ~/.config/nvim/vim-plugins/float-terminal.vim
source ~/.config/nvim/vim-plugins/theme-solarize.vim
source ~/.config/nvim/vim-plugins/denite.vim
source ~/.config/nvim/vim-plugins/syntask.vim
"source ~/.config/nvim/vim-plugins/barbar.vim
"Code syntax highlight
"Code syntax highlight
Plug 'yuezk/vim-js'                           " Javascript
Plug 'MaxMEllon/vim-jsx-pretty'               " JSX/React
autocmd! User goyo.vim echom 'Goyo is now loaded!'
" Initialize plugin system
" - Automatically execute: `filetype plugin indent on` and `syntax enable`.
source ~/.config/nvim/vim-plugins/easymotion.vim
source ~/.config/nvim/vim-plugins/float-terminal.vim
call plug#end()
"map <C-b> :NERDTreeToggle<CR>
"map <C-i> :NERDTreeFind<CR>
" split panel 
 nnoremap <A-h> <C-W>H
 nnoremap <A-j> <C-W>J
 nnoremap <A-k> <C-W>K
 nnoremap <A-l> <C-W>L
" move panel
 nnoremap <C-h> <C-w>h
 nnoremap <C-j> <C-w>j
 nnoremap <C-k> <C-w>k
 nnoremap <C-l> <C-w>l
 " open file in a text by placing text and gf
 inoremap ii <Esc>
" nnoremap gf :vert winc f<cr>
" copies filepath to clipboard by pressing yf
" nnoremap <silent> yf :let @+=expand('%:p')<CR>
" copies pwd to clipboard: command yd
" nnoremap <silent> yd :let @+=expand('%:p:h')<CR>
" Vim jump to the last position when reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal! g'\"" | endif
endif

autocmd FileType json syntax match Comment +\/\/.\+$+

let g:airline_powerline_fonts = 1
let g:webdevicons_enable = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'default'
"let g:airline_extensions = ['branch', 'hunks', 'coc']
let g:netrw_keepdir=0
let g:NERDTreeChDirMode=2
let g:vim_setting_path = stdpath('config') . '/vim-settings'
let g:NERDTreeHijackNetrw = 1

echo "VIM_SETTINGS_PATH:: ".glob(g:vim_setting_path)
"Open NERDTree if no files specified
" Automatically open NERDTree when Vim is started without specifying a file

" Include all .vim files from the 'vim-setting' directory

for filename in split(glob(g:vim_setting_path . '/*.*'), '\n')
  echo "Sourcing: " . filename
  execute 'source' filename
endfor
" Cursor shape
