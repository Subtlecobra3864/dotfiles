require ('plugins')


-- load legacy options
vim.cmd([[
so ~/.config/nvim/legacy.vim
]])

-- comma as leader
vim.g.mapleader = ','
vim.g.maplocalleader = ','

-- nohlsearch to leader + nl
vim.keymap.set('n', '<leader>nl', '<cmd>:nohlsearch<CR>', {
    desc = "stop highlighting search"
})

-- spectre
require ('spectre').setup()
vim.keymap.set('n', '<leader>S', '<cmd>lua require("spectre").toggle()<CR>', {
    desc = "Toggle Spectre"
})
vim.keymap.set('n', '<leader>sw', '<cmd>lua require("spectre").open_visual({select_word=true})<CR>', {
    desc = "Search current word"
})
vim.keymap.set('v', '<leader>sw', '<esc><cmd>lua require("spectre").open_visual()<CR>', {
    desc = "Search current word"
})
vim.keymap.set('n', '<leader>sp', '<cmd>lua require("spectre").open_file_search({select_word=true})<CR>', {
    desc = "Search on current file"
})


-- lualine
require ('lualine').setup{
	sections = {
		lualine_a = {'mode'},
		lualine_b = {'branch', 'diff', 'diagnostics'},
		lualine_c = {'filename'},
		lualine_x = {'encoding', 'fileformat', 'filetype'},
		lualine_y = {'progress'},
		lualine_z = {'location'},
	},
}

require ('nvim-autopairs').setup()

require ('mylsp')
require ('nvimcmp')

-- lsp_signature.nvim
require "lsp_signature".setup({
  hint_prefix = "",
  floating_window = false,
  bind = true,
})

require('nvim-treesitter.configs').setup {
	highlight = {
		enable = true,
	},
}


-- nvim-dap
local dap = require('dap')
dap.adapters.lldb = {
  type = 'executable',
  command = 'lldb-vscode',
  name = 'lldb'
}

dap.configurations.cpp = {
  {
    name = 'Launch',
    type = 'lldb',
    request = 'launch',
    program = function()
      return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
    end,
    cwd = '${workspaceFolder}',
    stopOnEntry = false,
    args = {},
  },
}

-- same config for C
dap.configurations.c = dap.configurations.cpp
