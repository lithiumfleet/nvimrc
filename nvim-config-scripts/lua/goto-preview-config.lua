require('goto-preview').setup()

vim.api.nvim_set_keymap("n", "gd", "<cmd>lua require('goto-preview').goto_preview_definition()<CR>", {noremap=true})
vim.api.nvim_set_keymap('n', 'gt', '<cmd>lua require("goto-preview").goto_preview_type_definition()<CR>', {noremap=true})
vim.api.nvim_set_keymap('n', 'gi', '<cmd>lua require("goto-preview").goto_preview_implementation()<CR>', {noremap=true})
vim.api.nvim_set_keymap('n', 'gD', '<cmd>lua require("goto-preview").goto_preview_declaration()<CR>', {noremap=true})
vim.api.nvim_set_keymap('n', 'gP', '<cmd>lua require("goto-preview").close_all_win()<CR>', {noremap=true})
vim.api.nvim_set_keymap('n', 'gpr', '<cmd>lua require("goto-preview").goto_preview_references()<CR>', {noremap=true})

