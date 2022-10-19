# setup-vim-for-me

###### copy the configuration for _vimrc or _gvimrc files
```
syntax on

let mapleader=","
let maplocalleader=" "

"netrw
let g:netrw_keepdir=0
let g:netrw_winsize=25
let g:netrw_banner=0
let g:netrw_localcopydircmd='cp -r'

set runtimepath+=~/vimfiles/bundle/potion

"mapping membuat komentar dengan python
autocmd FileType python nnoremap <buffer> <localleader>j I#<ESC>

"menampilkan nilai dari sumber kode
nmap <leader>so :source %<CR>
nmap <leader>so :source $HOME\_vimrc<CR>
nmap <leader>t :NERDTreeToggle<CR>

set backspace=indent,eol,start
set visualbell
set ignorecase
set autoindent
set smartindent
set smarttab
set shiftwidth=2
set softtabstop=2
set smartcase
set tabstop=2
set expandtab
set nobackup
set nowritebackup
set nocompatible
set nowrap
set noswapfile
set undodir="C:\\Users\\USER\\vimfiles\\undodir"
set undofile
set incsearch
set t_Co=256
set encoding=UTF-8
set clipboard=unnamed
set fileformat=unix
"set filetype=python

" guifont/options
set guifont=DejaVu_Sans_Mono:h11
set guioptions-=T
set guioptions-=r
set guioptions-=L
colorscheme linuxblack

"status line
set laststatus=2
set statusline=
set statusline+=%#PmenuSel#
set statusline+=%#LineNr#
"set statusline+=\ %f
set statusline+=%=
"set statusline+=%m
set statusline+=%#CursorColumn#
set statusline+=\ %y%m
set statusline+=\ %{&fileencoding?&fileencoding:&encoding}
set statusline+=\ [%{&fileformat}\]
set statusline+=\ %p%%
set statusline+=\ %l:%c
set statusline+=

"if has("gui_running")
"  set guifont=Lucida_Console:h11
"  set guioptions-=T
"  colorscheme linuxdark
"
"endif

"setel python language
set pythonthreehome=C:\Users\USER\AppData\Local\Programs\Python\Python310\
set pythonthreedll=C:\Users\USER\AppData\Local\Programs\Python\Python310\python310.dll

let python_highlight_all=1

"pop-up text
function! OmniPopup(action)
  if pumvisible()
    if a:action == 'j'
      return "\<C-N>"
    elseif a:action == 'k'
      return "\<C-P>"
    endif
  endif
  return a:action
endfunction

inoremap <silent>j <C-R>=OmniPopup('j')<CR>
inoremap <silent>k <C-R>=OmniPopup('k')<CR>

"tab complete
function! InsertTabWrapper(direction)
  let col = col('.') - 1
  if !col || getline('.')[col - 1] !~ '\k'
    return "\<tab>"
  elseif "backward" == a:direction
    return "\<c-p>"
  else
    return "\<c-n>"
  endif
endfunction
inoremap <tab> <c-r>=InsertTabWrapper ("forward")<cr>
inoremap <s-tab> <c-r>=InsertTabWrapper ("backward")<cr>

inoremap <expr><C-J> pumvisible() ? "\<C-n>" : "\<C-J>"
inoremap <expr><C-K> pumvisible() ? "\<C-p>" : "\<C-K>"
inoremap <expr><Cr>  pumvisible() ? "\<C-y>" : "\<Cr>"

"drag visual
vmap <expr> <LEFT>    DVB_Drag('left')
vmap <expr> <RIGHT>   DVB_Drag('right')
vmap <expr> <DOWN>    DVB_Drag('down')
vmap <expr> <UP>      DVB_Drag('up')
vmap <expr> <D>       DVB_Duplicate()

"vim math
xmap <silent> <expr> ++ VMATH_YankAndAnalyse()
nmap <silent>        ++ vip++

" vim hl next
nmap <silent> <BS> :call HLNextOff() <BAR> :nohlsearch<cr>

autocmd FileType python setlocal expandtab tabstop=4 shiftwidth=4
set ww=<,>,[,]

call plug#begin('~/vimfiles/plugged')
" The default plugin directory will be as follows:
"   - Vim (Linux/macOS): '~/.vim/plugged'
"   - Vim (Windows): '~/vimfiles/plugged'
"   - Neovim (Linux/macOS/Windows): stdpath('data') . '/plugged'
" You can specify a custom plugin directory by passing it as the argument
"   - e.g. `call plug#begin('~/.vim/plugged')`
"   - Avoid using standard Vim directory names like 'plugin'

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" Multiple Plug commands can be written in a single line using | separators
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

"colorscheme
Plug 'chriskempson/base16-vim'

Plug 'davidhalter/jedi-vim'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }


" Initialize plugin system
" - Automatically executes `filetype plugin indent on` and `syntax enable`.
call plug#end()
" You can revert the settings after the call like so:
"   filetype indent off   " Disable file-type-specific indentation
"   syntax off            " Disable syntax highlighting


set completeopt-=preview
filetype plugin indent on
```
