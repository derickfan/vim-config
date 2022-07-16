local Plug = vim.fn['plug#']

vim.call("plug#begin")
  Plug "wbthomason/packer.nvim"
  Plug "nvim-lua/popup.nvim"
  Plug "nvim-lua/plenary.nvim"
  Plug "lunarvim/colorschemes"

  Plug "kyazdani42/nvim-tree.lua"
  Plug "kyazdani42/nvim-web-devicons"

  Plug "nvim-lualine/lualine.nvim"

  Plug "hrsh7th/nvim-cmp"
  Plug "hrsh7th/cmp-buffer"
  Plug "hrsh7th/cmp-path"
  Plug "hrsh7th/cmp-cmdline"
  Plug "saadparwaiz1/cmp_luasnip"
  Plug "hrsh7th/cmp-nvim-lsp"
  Plug "hrsh7th/cmp-nvim-lua"

  Plug "L3MON4D3/LuaSnip"
  Plug "rafamadriz/friendly-snippets"

  Plug "neovim/nvim-lspconfig"
  Plug "williamboman/nvim-lsp-installer"

  Plug "scalameta/nvim-metals"

  Plug "windwp/nvim-autopairs"

  Plug "nvim-telescope/telescope.nvim"
  Plug "nvim-telescope/telescope-media-files.nvim"

  Plug "terrortylor/nvim-comment"

  Plug "akinsho/toggleterm.nvim"

  Plug "folke/which-key.nvim"

  Plug "nvim-treesitter/nvim-treesitter"
  Plug "p00f/nvim-ts-rainbow"

  Plug "mhinz/vim-startify"

  Plug "lewis6991/gitsigns.nvim"
  Plug "tpope/vim-rhubarb"
  Plug "tpope/vim-fugitive"

  Plug "nvim-orgmode/orgmode"

  Plug "akinsho/bufferline.nvim"
  Plug "kazhala/close-buffers.nvim"

  Plug "SmiteshP/nvim-gps"

vim.call("plug#end")
