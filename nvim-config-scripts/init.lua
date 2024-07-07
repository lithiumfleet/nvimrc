local vim = vim
local Plug = vim.fn['plug#']
vim.call('plug#begin')

Plug('tpope/vim-sensible')
Plug('folke/tokyonight.nvim')
Plug('terryma/vim-multiple-cursors')

-- fzf
Plug('junegunn/fzf')

-- nvim-cmp 
Plug('neovim/nvim-lspconfig')
Plug('hrsh7th/cmp-nvim-lsp')
Plug('hrsh7th/cmp-buffer')
Plug('hrsh7th/cmp-path')
Plug('hrsh7th/cmp-cmdline')
Plug('hrsh7th/nvim-cmp')

-- lua-snip
Plug('L3MON4D3/LuaSnip')
Plug('saadparwaiz1/cmp_luasnip')

-- treesitter
Plug('nvim-treesitter/nvim-treesitter')

-- cs"'
Plug('tpope/vim-surround')

-- background
Plug('xiyaowong/transparent.nvim')
Plug('NLKNguyen/papercolor-theme')
Plug('gregsexton/Atom')

-- auto brackets
Plug('m4xshen/autoclose.nvim')

-- file explorer
Plug('stevearc/oil.nvim')

-- show keys on screen
Plug('NStefan002/screenkey.nvim')

-- status line
Plug('freddiehaddad/feline.nvim')

-- terminal plugin
Plug('s1n7ax/nvim-terminal')

vim.call('plug#end')

-- Scripts loaded after plug#end().
require('cmp-config')
require('fzf-config')
require('treesitter-config')
require('oil-config')
require('feline-config')
require('terminal-config')
-- For normal settings
require('vimrc')
-- Some plugins are easy to setup
require("autoclose").setup()

-- auto run
vim.cmd('silent! colorscheme tokyonight')
--vim.api.nvim_create_autocmd("VimEnter", {
--  pattern = "*",
--  command = "Screenkey toggle"
--})
