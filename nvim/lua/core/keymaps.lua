vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.opt.laststatus =  2


-- indent settings
vim.opt.tabstop = 8
vim.opt.shiftwidth = 8
vim.opt.expandtab = true

-- general QOL settings, line numbers, etc
vim.cmd[[set number]]
vim.cmd[[set ruler]]
vim.cmd[[set nowrap]]
vim.cmd[[set colorcolumn=80]]
vim.cmd([[
set whichwrap+=<,>,[,]
]])
vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')
