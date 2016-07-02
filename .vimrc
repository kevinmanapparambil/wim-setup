set nocompatible              " be iMproved, required
filetype off                  " required


so ~/.vim/plugins.vim


"-------- General ------"
syntax enable

set backspace=indent,eol,start				"Make backspace behave like any other editor"
let mapleader = ','					"The default leader is \, but a comma is much better"
set nonumber						"Lets activate line numbers"



"----------- Search -----------"
set hlsearch
set incsearch
set linespace=15					"Mac vim specific line-height"





"-----------NERD Comment -----------"
let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1
let g:NERDDefaultAlign = 'left'
let g:NERDAltDelims_java = 1
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }




"-----------Split Management -----------"
set splitbelow
set splitright 

nmap <C-J> <C-W><C-J>
nmap <C-K> <C-W><C-K>
nmap <C-H> <C-W><C-H>
nmap <C-L> <C-W><C-L>





"----------- Visuals -----------"
colorscheme atom-dark
set guifont=Fira_Code:h13
set t_CO=256
set guioptions-=e

set guioptions-=l
set guioptions-=L
set guioptions-=r


"-----------Plugis-----------"
execute pathogen#infect()
call pathogen#helptags()

"/
"/ CrltP
"/
let g:ctrlp_custom_ignore = 'node_modules\DS_Store\|git'





"/
"/ NERDTree
"/

let NERDTreeHijackNetrw = 0
highlight VertSplit ctermbg=NONE
highlight VertSplit ctermfg=NONE
highlight VertSplit cterm=NONE



"/
"/ Snip 
"/
let g:pdv_template_dir = $HOME ."/.vim/bundle/pdv/templates_snip"
noremap <leader>d :call pdv#DocumentWithSnip()<CR> 

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
let g:UltiSnipsEditSplit="vertical"






"------------ Mappings ---------------"

"Make it easy to edit the cimrc file"
nmap <Leader>ev :tabedit $MYVIMRC<cr>
nmap <Leader>ep :tabedit ~/.vim/plugins.vim<cr>
nmap <Leader><space> :nohlsearch<cr>

nmap <Leader>1 :NERDTreeToggle<cr>
nmap <Leader>f :tag<space>
nmap <c-n> :set number!<cr>



"-------------- Controll P- --------------------"
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'


nmap <D-p> :CtrlP<cr>
nmap <c-e> :CtrlPMRUFiles<cr>
nmap <D-e> :CtrlPMRUFiles<cr>
nmap <c-R> :CtrlPBufTag<cr>





"-------------- Auto-Commands- --------------------"

"Automatically source the cimrc file on save"

augroup autosourcing
	autocmd!
	autocmd BufWritePost .vimrc source %
augroup END 

if has("gui_macvim")
		macmenu &File.Print key=<nop>
endif	
