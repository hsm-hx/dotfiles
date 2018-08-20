"indent
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set autoindent
set smartindent
set list listchars=tab:\-\>

"インデントで折りたたみ
set foldmethod=indent

"settings
set fenc=uft-8
set nowritebackup
set nobackup
set noswapfile
set autoread
set hidden
set showcmd
set clipboard=unnamed

"edits
set number
set cursorline
set virtualedit=onemore
set backspace=indent,eol,start
set visualbell
set showmatch
set laststatus=2
set wildmode=list:longest
set ambiwidth=double
set wildmenu
nnoremap j gj
nnoremap k gk
syntax on

"search
set ignorecase
set smartcase
set incsearch
set wrapscan
set hlsearch
nmap <Esc><Esc> :nohlsearch<CR><Esc>

"views
set noerrorbells
set cmdheight=2
set laststatus=2
set display=lastline
set list

if &compatible
 set nocompatible
endif
" Add the dein installation directory into runtimepath
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.cache/dein')
 call dein#begin('~/.cache/dein')

 call dein#add('~/.cache/dein')
 call dein#add('Shougo/deoplete.nvim')
 call dein#add('kannokanno/previm')
 call dein#add('tyru/open-browser.vim')
 if !has('nvim')
   call dein#add('roxma/nvim-yarp')
   call dein#add('roxma/vim-hug-neovim-rpc')
 endif

 call dein#end()
 call dein#save_state()
endif

filetype plugin indent on
syntax enable

let g:netrw_nogx = 1 " disable netrw's gx mapping.
nmap gx <Plug>(openbrowser-smart-search)
vmap gx <Plug>(openbrowser-smart-search)

augroup PrevimSettings
    autocmd!
    autocmd BufNewFile,BufRead *.{md,mdwn,mkd,mkdn,mark*} set filetype=markdown
augroup END
