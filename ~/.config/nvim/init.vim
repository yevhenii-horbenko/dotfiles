call plug#begin()

filetype plugin on
set wildignore+=*/node_modules/*,*/dist/*,*/public/*,*/.git/*
set number
set smartindent
set tabstop=2
set shiftwidth=2
set expandtab
set clipboard=unnamed
set completeopt=menu,menuone,noselect
set hlsearch
set wildmenu
set relativenumber

set smartcase	" Enable smart-case search
set ignorecase	" Always case-insensitive
set incsearch	" Searches for strings incrementally
set linebreak	" Break lines at word (requires Wrap lines)
set showbreak=+++ " Wrap-broken line prefix

set viminfo='1000

" Folding
set foldmethod=indent   
set foldnestmax=10
set nofoldenable
set foldlevel=2

" Permanent undo
set undodir=~/.config/nvim/.vimdid
set undofile

" Disabling arrow keys
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
" Easier navigation
nnoremap <C-h> <C-w>h
nnoremap <leader>j <C-w>j
nnoremap <leader>k <C-w>k
nnoremap <C-l> <C-w>l

Plug 'raimondi/delimitmate' " Closing brackets
let g:delimitMate_expand_cr = 2
let g:delimitMate_expand_space = 2

Plug 'vim-scripts/matchit.zip' 

" Navigation
Plug 'easymotion/vim-easymotion'
let g:EasyMotion_do_mapping = 0 " Disable default mappings

" Jump to anywhere you want with minimal keystrokes, with just one key binding.
" `s{char}{label}`
nmap s <Plug>(easymotion-overwin-f)
" or
" `s{char}{char}{label}`
" Need one more keystroke, but on average, it may be more comfortable.
nmap s <Plug>(easymotion-overwin-f2)

" Turn on case-insensitive feature
let g:EasyMotion_smartcase = 1

" Async jobs
Plug 'skywind3000/asyncrun.vim'

" Autosave
Plug 'sjl/vitality.vim'
au FocusLost * :wa

call plug#end()

lua require('init')

let $NVIM_TUI_ENABLE_TRUE_COLOR=1
if &term =~ '256color'
  " disable Background Color Erase (BCE) so that color schemes
  " render properly when inside 256-color tmux and GNU screen.
  " see also http://snk.tuxfamily.org/log/vim-256color-bce.html
  set t_ut=
endif
if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif
set t_Co=256
set background=dark

" Section: Local-Machine Config
autocmd BufWritePre *.go lua vim.lsp.buf.format()

if filereadable($DOTFILES . "/nvim/init.local.vim")
  source $DOTFILES/nvim/init.local.vim
endif
