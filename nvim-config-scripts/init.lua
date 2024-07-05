-- For normal settings
require('vimrc')

-- Setup all plugins
require('plugins-setup')

-- For nvim-cmp
require('cmp-config')

-- For treesitter
require('treesitter-config')
require('nvim-treesitter.configs').setup{highlight={enable=true}}

-- For fzf
require('fzf-config')

-- For autoclose
require('autoclose-config')

-- For oil file explorer
require('oil-config')

-- For custom command
vim.api.nvim_create_user_command('Chbg', function()
  vim.cmd('!powershell -Command chbg')
end, {})

