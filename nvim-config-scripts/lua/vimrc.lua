-- For normal sets
vim.opt.number = true
vim.opt.autoindent = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.mouse = 'a'
vim.opt.clipboard:append('unnamedplus') -- Use system clipboard

-- For block select
vim.api.nvim_set_keymap('n', '<C-q>', '<C-v>', { noremap = true, silent = true }) -- <Ctrl-q> to visual block mode
vim.api.nvim_set_keymap('n', '<C-s>', '<cmd>lua vim.lsp.buf.hover()<CR>', { noremap = true, silent = true }) -- <C-s> to Show function Documentation

-- For bordered hover paddel
local lsp = vim.lsp
lsp.handlers["textDocument/hover"] = lsp.with(vim.lsp.handlers.hover, {
  border = "rounded",
}) -- Change border of documentation hover window, See https://github.com/neovim/neovim/pull/13998.

-- For quick resize window
vim.api.nvim_set_keymap('n', '<C-Up>', '<cmd>resize -1<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-Down>', '<cmd>resize +1<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-Left>', '<cmd>vertical resize -1<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-Right>', '<cmd>vertical resize +1<CR>', { noremap = true, silent = true })

-- For custom command
vim.api.nvim_create_user_command('Chbg', function()
  vim.cmd('!powershell -Command chbg')
end, {})

