vim.o.termguicolors = true
vim.cmd [[colorscheme gruvbox]]
vim.cmd[[hi NvimTreeNormal guibg=NONE ctermbg=NONE]]

-- Easier to keep track of lualine themes if in same file as theme command
require('lualine').setup{
        options = {
                icons_enabled = false,
                -- theme = 'auto'
                section_separators = {},
        },
        sections = {
                lualine_a = {'mode'},
                lualine_b = {'branch', 'diff', 'diagnostics'},
                lualine_c = {
                        'filename',
                        function()
                                return vim.fn['nvim_treesitter#statusline'](180)
                        end},
                lualine_x = {'encoding', 'fileformat', 'filetype'},
                lualine_y = {'progress'},
                lualine_z = {'location'}
        },
}
