set shell=/bin/bash
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'bling/vim-airline'

Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/syntastic'
Plugin 'easymotion/vim-easymotion'

" split array-like expressions on multiple lines
" gS gJ
Plugin 'AndrewRadev/splitjoin.vim'

Plugin 'altercation/vim-colors-solarized'


" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" Correct typos on save and exit
command! WQ wq
command! Wq wq
command! W w
command! Q q



"""Others"""
set title
set showmode
set ttyfast
set wildchar=<TAB>
set softtabstop=4
set shiftwidth=4
set tabstop=4
set smartindent
set paste
set hlsearch
set incsearch
set showmatch
set expandtab
"""Show Position"""
set numberwidth=3
"set number
set ruler
"""Tmux fixes/workarounds"""
set term=xterm-256color
"""Highlight"""
"colo default
set background=dark
highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg=DarkGrey guibg=NONE
highlight WhitespaceEOL term=reverse ctermbg=Red guibg=Red
match WhitespaceEOL /\s\+$/
highlight SpecialKey ctermfg=DarkGray
"Set the pmenu dropdown colors
hi Pmenu ctermfg=Black ctermbg=White
hi PmenuSel ctermfg=Green ctermbg=Blue
set list
set listchars=tab:>-
"""File types"""
syntax on
highlight ColorColumn ctermbg=4
set colorcolumn=120
filetype plugin on
"""Shortcuts"""
nnoremap <F5> :! clear; PROMPT_EXTRA='[VIM]' /bin/bash<CR><CR>
nnoremap <f12> :set filetype=python<cr>; SyntasticToggleMode
"""Trailing whitespaces"""
autocmd bufwritepre * let save_cursor = getpos( '.' ) |
\ silent %s/[ \t]\+$//ge |
\ silent %s/\n*\%$//e |
\ call setpos( '.', save_cursor )

"""set mouse=a"""
set number
"""autocmd *.zts set syntax=python"""

set runtimepath^=~/.vim/bundle/ctrlp.vim

"""For the airline plugin to show the bar even in single window mode"""
set laststatus=2
let g:ctrlp_max_files=0
"""colorscheme sourcerer"""

"""Line swapping"""
nnoremap <silent> <C-Down> ddp
nnoremap <silent> <C-Up> ddkP

"""Multiline swapping"""
vmap <C-Up> xkP`[V`]
vmap <C-Down> xp`[V`]

" stay in visual mode after indentation
vnoremap < <gv
vnoremap > >gv
set ignorecase

" <C-_> is seen as <C-/>
vmap <C-_> <leader>c<Space>

"highlight cursor line and column
"highlight ColorColumn ctermbg=2
"set cursorline
"set cursorcolumn


"Syntastic plugin settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"change tabs with ctrl + shift + arrows
"nnoremap <silent> <C-S-Right> gt
"nnoremap <silent> <C-S-Left> gT

"change tabs with ctrl h/l
nnoremap <silent> <C-l> gt
nnoremap <silent> <C-h> gT

nnoremap <silent> <C-A-Right> :tabm +1
nnoremap <silent> <C-A-Left> :tabm -1
"colorscheme sourcerer


if &diff                             " only for diff mode/vimdiff
  set diffopt=filler,context:1000000 " filler is default and inserts empty lines for sync
endif

"Fold lines with f9
nnoremap <F9><F9> :set foldmethod=indent<cr>
inoremap <F9> <C-O>za
nnoremap <F9> za
onoremap <F9> <C-C>za
vnoremap <F9> zf

let g:solarized_termcolors=256
colorscheme solarized

"Set default folding
"set foldmethod=indent
