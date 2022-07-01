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
local plugins = {
  -- Core
  { 'wbthomason/packer.nvim' },
  
  -- Utils
  { 'nathom/filetype.nvim' },
  { 'sheerun/vim-polyglot' },
  { 'kyazdani42/nvim-tree.lua', config = get_setup('nvim-tree') },
  { 'windwp/nvim-autopairs', config = get_setup('autopairs') },
  { 'norcalli/nvim-colorizer.lua', config = get_setup('nvim-colorizer') },
  { 'norcalli/nvim-base16.lua' },

  -- Ui
  { 'kyazdani42/nvim-web-devicons'},
  { 'ryanoasis/vim-devicons' },
  { 'lukas-reineke/indent-blankline.nvim', config = get_setup('indent-blankline') },

  -- Statusline
  {
    'nvim-lualine/lualine.nvim',
    config = get_setup('lualine-config'),
    requires = { 'kyazdani42/nvim-web-devicons', opt = true },
    },

  -- Statusbar
  { 'romgrk/barbar.nvim', config = get_setup('barbar') },

  -- Cmp plugins
  {
    'hrsh7th/nvim-cmp',
  requires ={
      { 'neovim/nvim-lspconfig' },
      { 'hrsh7th/cmp-nvim-lsp' },
      { 'hrsh7th/cmp-nvim-lua' },
      { 'hrsh7th/cmp-buffer' },
      { 'hrsh7th/cmp-path' },
      { 'hrsh7th/cmp-cmdline' },
      { 'L3MON4D3/LuaSnip' },
      { 'saadparwaiz1/cmp_luasnip' },
    },
    config = get_setup('cmp'),
  },
}

-- Load Plugins
return packer.startup(function(use)
  for _, v in pairs(plugins) do
    use(v)
  end
  

  -- Automatically set up your configuration after cloning packer.nvim
  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)
