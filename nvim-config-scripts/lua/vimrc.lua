vim.opt.number = true -- Enable line numbers
vim.opt.autoindent = true -- Enable auto indent
vim.opt.shiftwidth = 4 -- Set shift width for indentation
vim.opt.softtabstop = 4 -- Set soft tab stop
vim.opt.mouse = 'a' -- Enable mouse support
vim.opt.clipboard:append('unnamedplus') -- Use system clipboard


local vim = vim
local Plug = vim.fn['plug#']

vim.call('plug#begin')

Plug('tpope/vim-sensible')
Plug('junegunn/fzf')
Plug('folke/tokyonight.nvim')
Plug('terryma/vim-multiple-cursors')

-- nvim-cmp 
Plug('neovim/nvim-lspconfig')
Plug('hrsh7th/cmp-nvim-lsp')
Plug('hrsh7th/cmp-buffer')
Plug('hrsh7th/cmp-path')
Plug('hrsh7th/cmp-cmdline')
Plug('hrsh7th/nvim-cmp')
Plug('hrsh7th/cmp-vsnip')
Plug('hrsh7th/vim-vsnip')

-- coc
Plug('neoclide/coc.nvim', {['branch']='release'})

-- treesitter
Plug('nvim-treesitter/nvim-treesitter')

-- cs"'
Plug('tpope/vim-surround')

vim.call('plug#end')

-- Color schemes should be loaded after plug#end().
vim.cmd('silent! colorscheme tokyonight')
