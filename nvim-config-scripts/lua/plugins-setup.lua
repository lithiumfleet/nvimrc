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

-- background
Plug('xiyaowong/transparent.nvim')
Plug('NLKNguyen/papercolor-theme')
Plug('gregsexton/Atom')

-- auto brackets
Plug('m4xshen/autoclose.nvim')

vim.call('plug#end')

-- Color schemes should be loaded after plug#end().
vim.cmd('silent! colorscheme tokyonight')
