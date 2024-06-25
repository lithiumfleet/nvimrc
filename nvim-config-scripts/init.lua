-- For normal settings
require('vimrc')

-- Setup all plugins
require('plugins-setup')

-- For nvim-cmp
require('cmp-config')

-- For treesitter
require('treesitter-config')
require('nvim-treesitter.configs').setup{highlight={enable=true}}

-- For FZF
vim.api.nvim_command('command! Open FZF')
