let mapleader =" "

" Auto install plug.vim"
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Load plugins"
call plug#begin('~/.vim/plugged')
  Plug 'vim-syntastic/syntastic'
  Plug 'w0rp/ale'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'PotatoesMaster/i3-vim-syntax'
  Plug 'dylanaraps/wal.vim'
  Plug 'farmergreg/vim-lastplace'
  Plug 'junegunn/vim-easy-align'
call plug#end()

" Turn on syntax highlighting"
syntax on

" #!/bin/bash mapped to F2 key"
map <F2> i#!/bin/bash<ESC>

" Turn on line numbers"
set number relativenumber
filetype plugin on

" Turn off default mode display
set noshowmode
set ts=4
set showtabline=2

" Automatically deletes all trailing whitespace on save"
autocmd BufWritePre * %s/\s\+$//e

" Airline settings"
let g:airline_powerline_fonts = 1
let g:Powerline_symbols='fancy'
let g:airline_theme='murmur'
let g:airline_skip_empty_sections = 1
let g:airline#extensions#tabline#enabled = 1

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.crypt = '🔒'
let g:airline_symbols.linenr = '☰'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.maxlinenr = '㏑'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.spell = 'Ꞩ'
let g:airline_symbols.notexists = 'Ɇ'
let g:airline_symbols.whitespace = 'Ξ'

" powerline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = '☰'
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.dirty='⚡'

function! AirlineInit()
  let g:airline_section_a = airline#section#create(['mode',' ','branch'])
  let g:airline_section_b = airline#section#create_left(['ffenc','hunks','%f'])
  let g:airline_section_c = airline#section#create(['filetype'])
  let g:airline_section_x = airline#section#create(['%P'])
  let g:airline_section_y = airline#section#create(['%B'])
  let g:airline_section_z = airline#section#create_right(['%l','%c'])
endfunction
call AirlineInit()

