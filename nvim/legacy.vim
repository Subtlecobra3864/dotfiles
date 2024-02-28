" Legacy vim options

" Line number
set ruler
set number

" No hidden buffers
set nohidden

set undodir=~/.cache/nvim/undodir
set undofile

" automatically read on change
set autoread

au FileType cpp set formatprg=clang-format | set equalprg=clang-format

set foldlevelstart=99

set nocompatible
let c_no_curly_error=1

" FZF in runtimepath
set rtp+=/usr/local/opt/fzf
let g:fzf_history_dir = '~/.local/share/fzf-history'

" Use ripgrep as grep
set grepprg=rg\ --vimgrep\ --smart-case\ --follow

" FZF bindings
nnoremap <silent> <C-p> :Files<CR>
nnoremap <silent> <C-g> :Rg<CR>

" nvim-spectre bindings



" colourscheme
set termguicolors
let g:gruvbox_contrast_dark='hard'
let g:grugbox_contrast_dark='hard'
colorscheme gruvbox
hi LspCxxHlGroupMemberVariable guifg=#83a598

nnoremap <c-z> <nop>

syntax on

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

" Function to set tab width to n spaces
function! SetTab(n)
  let &tabstop=a:n
  let &shiftwidth=a:n
  let &softtabstop=a:n
  set expandtab
  set autoindent
  set smartindent
endfunction

command! -nargs=1 SetTab call SetTab(<f-args>)

set autoindent
set smartindent

" Function to trim extra whitespace in whole file
function! Trim()
  let l:save = winsaveview()
  keeppatterns %s/\s\+$//e
  call winrestview(l:save)
endfun

command! -nargs=0 Trim call Trim()

set laststatus=2
set hlsearch
set incsearch

set t_Co=256

set nobackup
set nowritebackup
set shortmess+=c

set signcolumn=yes

au FileType text set colorcolumn=80

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


" nvim-dap bindings
nnoremap <silent> <F5> <Cmd>lua require'dap'.continue()<CR>
nnoremap <silent> <F10> <Cmd>lua require'dap'.step_over()<CR>
nnoremap <silent> <F11> <Cmd>lua require'dap'.step_into()<CR>
nnoremap <silent> <F12> <Cmd>lua require'dap'.step_out()<CR>
nnoremap <silent> <Leader>b <Cmd>lua require'dap'.toggle_breakpoint()<CR>
nnoremap <silent> <Leader>B <Cmd>lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>
nnoremap <silent> <Leader>lp <Cmd>lua require'dap'.set_breakpoint(nil, nil, vim.fn.input('Log point message: '))<CR>
nnoremap <silent> <Leader>dr <Cmd>lua require'dap'.repl.open()<CR>
nnoremap <silent> <Leader>dl <Cmd>lua require'dap'.run_last()<CR>
