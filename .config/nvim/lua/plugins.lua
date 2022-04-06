local fn = vim.fn

-- Automatically install packer
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
  print "Installing packer close and reopen Neovim..."
  vim.cmd [[packadd packer.nvim]]
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

-- Have packer use a popup window
packer.init {
  display = {
    open_fn = function()
      return require("packer.util").float { border = "rounded" }
    end,
  },
}

-- returns the require for use in `config` parameter of packer's use
-- expects the name of the config file
function get_setup(name)
  return string.format('require("setup/%s")', name)
end

-- Plugins
return packer.startup(function(use)
  use 'wbthomason/packer.nvim'
  use 'sheerun/vim-polyglot'
  use({ 'kyazdani42/nvim-tree.lua', config = get_setup('nvim-tree') })
  use({ 'windwp/nvim-autopairs', config = get_setup('autopairs') })
  use 'tpope/vim-fugitive'
  use 'tpope/vim-rhubarb'
  use 'kyazdani42/nvim-web-devicons'
  use({
    'nvim-lualine/lualine.nvim',
    config = get_setup('lualine-config'),
    requires = { 'kyazdani42/nvim-web-devicons', opt = true },
    })
  use({ 'romgrk/barbar.nvim', config = get_setup('barbar') })
  use 'ryanoasis/vim-devicons'
  use 'morhetz/gruvbox'
  use({ "goolord/alpha-nvim", config = get_setup("alpha") })
  use({ "onsails/lspkind-nvim", requires = { { "famiu/bufdelete.nvim" } } })

  -- Cmp plugins
  use({
    'hrsh7th/nvim-cmp',
  requires ={
      { 'hrsh7th/cmp-nvim-lsp' },
      { 'hrsh7th/cmp-nvim-lua' },
      { 'hrsh7th/cmp-buffer' },
      { 'hrsh7th/cmp-path' },
      { 'hrsh7th/cmp-cmdline' },
      { 'saadparwaiz1/cmp_luasnip' },
    },
    config = get_setup('cmp'),
  })

  -- Snippets
  use 'L3MON4D3/LuaSnip'
  use 'rafamadriz/friendly-snippets'

  -- LSP
  --  use 'neovim/nvim-lspconfig'

  -- Automatically set up your configuration after cloning packer.nvim
  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)
