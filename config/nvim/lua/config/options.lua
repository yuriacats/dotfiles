local options = {
  encording = "utf-8",
  fileencording = "utf-8",
  title = true,
  backup = false,
  clipboard ="unnamedplus",
}
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.keymap.set('n','b', ':noh<CR>')
vim.keymap.set('n', 'gh','gT')
vim.keymap.set('n', 'gl','gt')
vim.keymap.set('n','s', '<Nor>')

-- how to install : https://github.com/wbthomason/packer.nvim
require("packer").startup(function()
  use 'wbthomason/packer.nvim'
-- use 'williamboman/nvim-lsp-installer'
  use 'williamboman/mason.nvim'
  use 'williamboman/mason-lspconfig.nvim'
  use 'vim-airline/vim-airline'
  use 'vim-airline/vim-airline-themes'
  use 'obaland/vfiler.vim'
  use 'obaland/vfiler-fzf'
  use 'ibhagwan/fzf-lua'
-- nvim-cmp
  use "hrsh7th/nvim-cmp"
  use "hrsh7th/cmp-path"
  use "hrsh7th/cmp-buffer"
  use "hrsh7th/cmp-cmdline"
  use "hrsh7th/cmp-nvim-lsp"
  use "hrsh7th/vim-vsnip"
  use 'vim-airline/vim-airline'
  use 'vim-airline/vim-airline-themes'
  use 'prabirshrestha/async.vim'
  use 'prabirshrestha/vim-lsp'
  use 'prabirshrestha/asyncomplete.vim'
  use 'prabirshrestha/asyncomplete-lsp.vim'
  use 'hashivim/vim-terraform' 
end)

