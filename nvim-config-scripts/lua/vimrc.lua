vim.opt.number = true -- Enable line numbers
vim.opt.autoindent = true -- Enable auto indent
vim.opt.shiftwidth = 4 -- Set shift width for indentation
vim.opt.softtabstop = 4 -- Set soft tab stop
vim.opt.mouse = 'a' -- Enable mouse support
vim.opt.clipboard:append('unnamedplus') -- Use system clipboard
vim.api.nvim_set_keymap('n', '<C-q>', '<C-v>', { noremap = true, silent = true }) -- Remap Ctrl-q to visual block mode
