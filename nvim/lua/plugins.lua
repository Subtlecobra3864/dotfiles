return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use 'morhetz/gruvbox'
  use 'junegunn/fzf'
  use 'junegunn/fzf.vim'
  use 'nvim-treesitter/nvim-treesitter'
  use 'ray-x/lsp_signature.nvim'
  use 'neovim/nvim-lspconfig'
  use {
		  'nvim-lualine/lualine.nvim',
		  requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }
  use 'nvim-lua/plenary.nvim'
  use 'ntpeters/vim-better-whitespace'
  use 'windwp/nvim-autopairs'
  use 'luochen1990/rainbow'
  use 'nvim-pack/nvim-spectre'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/vim-vsnip'
  use 'SirVer/ultisnips'
  use 'quangnguyen30192/cmp-nvim-ultisnips'
  use 'easymotion/vim-easymotion'
  use 'preservim/vimux'

end)
