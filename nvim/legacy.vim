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
set noexpandtab
set tabstop=4
set shiftwidth=4
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


" easy-motion
" disable default mappings, turn on case-insensitivity
let g:EasyMotion_do_mapping = 0
let g:EasyMotion_smartcase = 1

" enable history for fzf
let g:fzf_history_dir = '~/.local/share/fzf-history'

" move to start of line when jumping lines
let g:EasyMotion_startofline = 1

" fzf in runtimepath
set rtp+=/usr/local/opt/fzf

" Use ripgrep as grep
set grepprg=rg\ --vimgrep\ --smart-case\ --follow

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

" Customize fzf colors to match your color scheme
" - fzf#wrap translates this to a set of `--color` options
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
\ 'bg':      ['bg', 'Normal'],
\ 'hl':      ['fg', 'Comment'],
\ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
\ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
\ 'hl+':     ['fg', 'Statement'],
\ 'info':    ['fg', 'PreProc'],
\ 'border':  ['fg', 'Ignore'],
\ 'prompt':  ['fg', 'Conditional'],
\ 'pointer': ['fg', 'Exception'],
\ 'marker':  ['fg', 'Keyword'],
\ 'spinner': ['fg', 'Label'],
\ 'header':  ['fg', 'Comment'] }


" Function to trim extra whitespace in whole file
function! Trim()
  let l:save = winsaveview()
  keeppatterns %s/\s\+$//e
  call winrestview(l:save)
endfun

command! -nargs=0 Trim call Trim()

" auto-pairs
let g:AutoPairsFlyMode = 0
let g:AutoPairsShortcutBackInsert = '<M-b>'


" colorcolumn 80 when opening C/C++
autocmd BufRead,BufNewFile *.c setlocal colorcolumn=80
autocmd BufRead,BufNewFile *.h setlocal colorcolumn=80
autocmd BufRead,BufNewFile *.cpp setlocal colorcolumn=80
autocmd BufRead,BufNewFile *.hpp setlocal colorcolumn=80
autocmd BufRead,BufNewFile *.c set tabstop=4
autocmd BufRead,BufNewFile *.h set tabstop=4
autocmd BufRead,BufNewFile *.cpp set tabstop=4
autocmd BufRead,BufNewFile *.hpp set tabstop=4
" C/C++ indent options: fix extra indentation on function continuation
set cino=(0,W4

" colorcolumn 80, tab width 4 for shaders
autocmd BufRead,BufNewFile *.sc setlocal colorcolumn=80 | SetTab 4
