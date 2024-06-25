-- For normal settings
require('vimrc')

-- For Coc-nvim
require('coc-config')

-- For treesitter
require('treesitter-config')
require('nvim-treesitter.configs').setup{highlight={enable=true}}

-- For FZF
vim.api.nvim_command('command! Open FZF')
