" Useful snippets
" ------------------------
" Convert entire buffer to unix (ff=dos for dos) and write
" :bufdo! set ff=unix|w
"
" ------------------------
" .vimrc - begin
"
set nocompatible

" No swap or backup files "
set noswapfile
set nobackup

set showmode            " Show mode I'm in
set showcmd             " Show command I'm typing

" No wordwrap! "
set nowrap

" Numbers and theme "
set number
syntax enable

" Required by Vundle "
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle, required! "
Bundle 'gmarik/vundle'

" Github bundles "
Bundle 'kien/ctrlp.vim'
Bundle 'myusuf3/numbers.vim'
Bundle 'jeetsukumaran/vim-buffergator'
Bundle 'majutsushi/tagbar'
Bundle 'scrooloose/nerdtree'
Bundle 'sjl/gundo.vim'

" Bundle 'jaromero/vim-monokai-refined'
" Bundle 'Lokaltog/powerline' "
" Bundle 'tpope/vim-rails'

" Colors "
Bundle 'altercation/vim-colors-solarized'
Bundle 'chriskempson/base16-vim'

" Bundle 'morhetz/gruvbox'
" Bundle 'vim-scripts/BusyBee'
" Bundle 'croaker/mustang-vim'
" Bundle 'abra/obsidian2'
" Bundle 'flazz/vim-colorschemes'

" XDebug support "
" Bundle 'brookhong/DBGPavim'

" Git support bundle "
Bundle 'tpope/vim-fugitive'

" Distraction Free mode
" Bundle 'bilalq/lite-dfm'

" Airline statusbar
Bundle 'bling/vim-airline'

Bundle 'airblade/vim-gitgutter'

" Required by Vundle "
filetype plugin indent on

if has("gui_running")
 "set guifont=Ubuntu\ Mono:h18
 " set guifont=Ubuntu\ Mono\ derivative\ Powerline:h17
 set guifont=Source\ Code\ Pro\ Semibold:h16
 "set guifont=Courier:h17
endif

" Remove scrollbars "
set guioptions+=lrb
set guioptions-=lrb

" Remove left scrollbar for good! "
set go-=L

" Map a leader "
let mapleader = ","

" Tabs "
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

" Statusline "
" format markers: "
"   %t File name (tail) of file in the buffer "
"   %m Modified flag, text is " [+]"; " [-]" if 'modifiable' is off. "
"   %r Readonly flag, text is " [RO]". "
"   %y Type of file in the buffer, e.g., " [vim]". "
"   %= Separation point between left and right aligned items. "
"   %l Line number. "
"   %L Number of lines in buffer. "
"   %c Column number. "
"   %P percentage through buffer "

if has("gui")
    " ...
else
    set statusline=%t\ %m%r%y%=%{fugitive#statusline()}\ (%l/%L,%c)\ (%P)
endif
set laststatus=2
"let g:airline#extensions#tabline#enabled = 1
"let g:airline#extensions#tabline#left_sep = ' '
"let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline_powerline_fonts = 1
"if !exists('g:airline_symbols')
""  let g:airline_symbols = {}
"endif
"let g:airline_symbols.space = "\ua0"

" Enable colorscheme only if in Gui (MacVim) "
if has("gui")
	set background=dark
	colorscheme base16-ocean
endif

" All windows not same size after split or close "
set noequalalways

" Force filetype Markdown on *.txt and *.md "
autocmd BufRead,BufNewFile  *.txt,*.TXT,*.md set filetype=markdown

" Tagbar "
nmap <leader>rt :TagbarToggle<CR>

" Nerdtree "
map <leader>n :NERDTreeToggle<CR>

" Gundo "
nnoremap <leader>u :GundoToggle<CR>

" DFM "
" nnoremap <leader>z :LiteDFMToggle<CR>i<Esc>

"""
"  CtrlP
"  ctrlp.vim
"  http://www.vim.org/scripts/script.php?script_id=3736
"
"  Fast file finding.
"  Better version of command-t:
"    - no external ruby compilation needed
"    - accomodates different working directory styles
"""
let g:ctrlp_working_path_mode = 0     " don't manage working directory
let g:ctrlp_max_height = 10           " maximum size of match window


" Fileformats
" -------------------------------------------------------------
"  unix 	LF only (each line ends with an LF character).
"  dos 	CRLF (each line ends with two characters, CR then LF).
"  mac 	CR only (each line ends with a CR character). 
" set fileformat=unix

" //EOF "
