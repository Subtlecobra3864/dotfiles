vim.o.termguicolors = true
vim.cmd [[colorscheme gruvbox]]
vim.cmd[[hi NvimTreeNormal guibg=NONE ctermbg=NONE]]

-- Easier to keep track of lualine themes if in same file as theme command
require('lualine').setup{
	options = {
		icons_enabled = true,
		theme = 'auto',
        },
	sections = {
		lualine_a = {
			{
				'filename',
				path = 3,
			}
		}
	}
}

