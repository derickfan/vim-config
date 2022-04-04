local fn = vim.fn

local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system {
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  }
  print "Installing packer close and reopen Neovim ... "
  vim.cmd [[packadd packer.nvim]]
end

vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

packer.init {
  display = {
    open_fn = function()
      return require("packer.util").float
    end,
  },
}

return packer.startup(function(use)

  use "wbthomason/packer.nvim"
  use "nvim-lua/popup.nvim"
  use "nvim-lua/plenary.nvim"
  use "lunarvim/colorschemes"

  use "kyazdani42/nvim-tree.lua"
  use "kyazdani42/nvim-web-devicons"

  use "nvim-lualine/lualine.nvim"

  use "hrsh7th/nvim-cmp"
  use "hrsh7th/cmp-buffer"
  use "hrsh7th/cmp-path"
  use "hrsh7th/cmp-cmdline"
  use "saadparwaiz1/cmp_luasnip"
  use "hrsh7th/cmp-nvim-lsp"
  use "hrsh7th/cmp-nvim-lua"

  use "L3MON4D3/LuaSnip"
  use "rafamadriz/friendly-snippets"

  use "neovim/nvim-lspconfig"
  use "williamboman/nvim-lsp-installer"

  use "windwp/nvim-autopairs"

  use "nvim-telescope/telescope.nvim"
  use "nvim-telescope/telescope-media-files.nvim"

  use "terrortylor/nvim-comment"

  use "akinsho/toggleterm.nvim"

  use "folke/which-key.nvim"

  use {
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate",
  }
  use "p00f/nvim-ts-rainbow"

  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end

end)
