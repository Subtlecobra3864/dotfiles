local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)


local plugins = {

  -- Theme
  {
          'Mofiqul/vscode.nvim',
          'doums/darcula',
          'Morhetz/gruvbox',
          "folke/tokyonight.nvim",
          'Mofiqul/dracula.nvim',
          'navarasu/onedark.nvim',
          opts = {
                  transparent = true,
                  styles = {
                          sidebars = "transparent",
                          floats = "transparent",
                  },
          },
  },
  -- Transparent windows
  'xiyaowong/transparent.nvim',

  -- Treesitter
  'nvim-treesitter/nvim-treesitter',
  {
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v2.x',
	  dependencies = {
		  -- LSP Support
		  {'neovim/nvim-lspconfig'},             -- Required
    		  {'williamboman/mason.nvim'},           -- Optional
    		  {'williamboman/mason-lspconfig.nvim'}, -- Optional

    		  -- Autocompletion
    		  {'hrsh7th/nvim-cmp'},     -- Required
    		  {'hrsh7th/cmp-nvim-lsp'}, -- Required
    		  {'L3MON4D3/LuaSnip'},     -- Required
  		}
	},
        'jose-elias-alvarez/null-ls.nvim',

  -- CMake
  'cdelledonne/vim-cmake',

  -- Auto close brackets
  'm4xshen/autoclose.nvim',

  -- Move lines around
  'fedepujol/move.nvim',


  -- File explorer, lualine, telescope & fuzzy find
  'nvim-tree/nvim-tree.lua',
  'nvim-tree/nvim-web-devicons',
  'nvim-lualine/lualine.nvim',
  {
	  'nvim-telescope/telescope.nvim', tag = '0.1.4',
	  dependencies = { {'nvim-lua/plenary.nvim'} },
  },


  -- Comment enhancing plugins
  {
          "folke/todo-comments.nvim",
          dependencies = { {"nvim-lua/plenary.nvim"}}
  },

  -- LaTeX continuous compile
  "lervag/vimtex",

  -- Silly discord rpc
  'andweeb/presence.nvim',


}
local opts = {}
require("lazy").setup(plugins, opts)
