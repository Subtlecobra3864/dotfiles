" Legacy vim options


" Colourscheme
set termguicolors
let g:gruvbox_contrast_dark='hard'
let g:gruvbox_contrast_light='hard'
colorscheme gruvbox
hi LspCxxHlGroupMemberVariable guifg=#83a598

let mapleader = ","

" Syntax highlighting
syntax on

set number
set ruler

" Auto scroll at EOL
set whichwrap+=<,>,[,]


" Don't make sounds
set visualbell
set nowrap

" Indentation
set tabstop=4
set softtabstop=4
set noexpandtab
set autoindent
set smartindent

set laststatus=2

" Highlight search results
set hlsearch
set incsearch

" faster updates!
set updatetime=100

" no hidden buffers
set nohidden

set shortmess+=c

" disable backup files
set nobackup
set nowritebackup

" That bar thing that goes next to line numbers
set signcolumn=yes

" enable history for fzf
let g:fzf_history_dir = '~/.local/share/fzf-history'

" fzf in runtimepath
set rtp+=/usr/local/opt/fzf

" C-p: FZF find files
nnoremap <silent> <C-p> :Files<CR>

" C-g: FZF ('g'rep)/find in files
nnoremap <silent> <C-g> :Rg<CR>

" <leader>p: find and replace with nvim-spectre
nnoremap <silent> <leader>l :lua require('spectre').open()<CR>

" <leader>fr: find and replace in current file
nnoremap <silent> <leader>g viw:lua require('spectre').open_file_search()<CR>

" <leader>s: symbols outline
nnoremap <silent> <leader>s :SymbolsOutline<CR>

