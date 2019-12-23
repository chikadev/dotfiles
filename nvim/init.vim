"  OWO what's this
"  _       _ _         _
" (_)_ __ (_) |___   _(_)_ __ ___
" | | '_ \| | __\ \ / / | '_ ` _ \
" | | | | | | |_ \ V /| | | | | | |
" |_|_| |_|_|\__(_)_/ |_|_| |_| |_|

" Plugins
call plug#begin('~/.config/nvim/plugged')

Plug 'jiangmiao/auto-pairs'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'junegunn/goyo.vim'
Plug 'liuchengxu/space-vim-dark'
Plug 'scrooloose/nerdtree'
Plug 'morhetz/gruvbox'
Plug 'ryanoasis/vim-devicons'
Plug 'gcmt/taboo.vim'
Plug 'mhinz/vim-startify'

call plug#end()

" Regular Settings
set number
set relativenumber
set noshowmode

syntax enable 
colorscheme gruvbox

set cursorline
hi CursorLine term=bold cterm=bold guibg=Grey40

" Airline Settings
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'default'
let g:airline_powerline_fonts = 1
let g:airline_theme='gruvbox'
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#tabline#tab_nr_type = 1

" Functions
func FixColors()
	hi LineNr ctermbg=NONE guibg=NONE
	hi Comment guifg=#5C6370 ctermfg=59
endfunc

call FixColors()

func PluginMaps()
	if exists(":Goyo")
		map <leader>g :Goyo <bar> :call FixColors()<cr>
	endif
endfunc

" Autocommands
autocmd VimEnter * call PluginMaps()

let mapleader = " "

" movement

map <leader>h <C-w>h
map <leader>j <C-w>j
map <leader>k <C-w>k
map <leader>l <C-w>l

" [c]onfig
map <leader>cr :source ~/.config/nvim/init.vim<cr>

" [w]indow 
map <leader>ws :w<cr>
map <leader>wwc :wq<cr>
map <leader>wc :q<cr>
map <leader>wac :NERDTreeClose <bar> :wa <bar> :qa!<cr> 

" [b]uffer
map <leader>bo :badd<Space>
map <leader>bc :bd<cr>
map <leader>bl :bn<cr>
map <leader>bh :bp<cr>
map <leader>be :e<Space>
map <leader>bsh :split<cr>
map <leader>bsv :vsplit<cr>

map <leader>1 :b1<cr>
map <leader>2 :b2<cr>
map <leader>3 :b3<cr>
map <leader>4 :b4<cr>
map <leader>5 :b5<cr>
map <leader>6 :b6<cr>
map <leader>7 :b7<cr>
map <leader>8 :b8<cr>
map <leader>9 :b9<cr>
map <leader>0 :b0<cr>

" [t]ab
map <leader>to :tabnew<Space>
map <leader>tc :tabclose<cr>
map <leader>tl gt
map <leader>th gT

map <leader>t1 1gt
map <leader>t2 2gt
map <leader>t3 3gt
map <leader>t4 4gt
map <leader>t5 5gt
map <leader>t6 6gt
map <leader>t7 7gt
map <leader>t8 8gt
map <leader>t9 9gt
map <leader>t0 0gt

" [n]erdtree
map <leader>no :NERDTree<cr>
map <leader>nf :NERDTreeFind<Space>
map <leader>nc :NERDTreeClose<cr>
map <leader>nn :NERDTreeFind<cr>

" [p]lug

if exists(":PlugInstall")
	map <leader>pi :PlugInstall<cr>
	map <leader>pu :PlugUpdate<cr>
	map <leaderr>pc :PlugClean<cr>
	echo "Plug bindings loaded.."
else
	echo "You don't have plug installed. Couldn't attach bindings."
endif
