-- For normal sets
vim.opt.autoindent = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.mouse = 'a'
vim.opt.clipboard:append('unnamedplus') -- Use system clipboard
vim.opt.encoding = 'utf-8'
vim.opt.fileencodings = { 'utf-8', 'ucs-bom', 'gbk', 'cp936', 'gb2312', 'gb18030' }

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

-- enable lsp messages in insert mode
vim.diagnostic.config({
    virtual_text = true,
    signs = true,
    update_in_insert = true,
    underline = true,
    severity_sort = false,
    float = true,
  })

-- cd desktop
vim.api.nvim_command('command! Cddesktop cd C:/Users/Lithium/OneDrive/桌面')

-- auto change director
vim.opt.autochdir = true

-- config for neovide
if vim.g.neovide then
    vim.o.guifont = "CodeNewRoman Nerd Font Mono:h18:b"
    vim.g.neovide_scale_factor = 0.8
    vim.g.neovide_text_gamma = 5.0
    vim.g.neovide_text_contrast = 0.5
    vim.g.neovide_padding_top = 5
    vim.g.neovide_padding_bottom = 5
    vim.g.neovide_padding_right = 5
    vim.g.neovide_padding_left = 5
    vim.g.neovide_window_blurred = true
    vim.g.neovide_floating_blur_amount_x = 2.0
    vim.g.neovide_floating_blur_amount_y = 2.0
    vim.g.neovide_floating_shadow = true
    vim.g.neovide_floating_z_height = 10
    vim.g.neovide_light_angle_degrees = 45
    vim.g.neovide_light_radius = 15
    vim.g.neovide_transparency = 0.65
    vim.g.neovide_scroll_animation_length = 0.3
    vim.g.neovide_scroll_animation_far_lines = 1
    vim.g.neovide_hide_mouse_when_typing = false
    vim.g.neovide_underline_stroke_scale = 1.0
    vim.g.neovide_theme = 'auto'
    vim.g.neovide_remember_window_size = true
    vim.g.neovide_cursor_vfx_mode = "railgun"
end

