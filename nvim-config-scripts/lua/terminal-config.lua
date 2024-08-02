require('nvim-terminal').setup({
    window = {
        -- Do `:h :botright` for more information
        position = 'botright',
        split = 'sp',
        width = 50,
        height = 10,
    },
    disable_default_keymaps = false,
    -- keymap to toggle open and close terminal window
    toggle_keymap = '<C-t>',
})

-- Reuse the last terminal buffer
vim.o.hidden = true

-- Remap the <Esc> in termial
vim.keymap.set('t', '<Esc>', '<C-\\><C-n>')

-- Chsh powershell
vim.opt.shell = 'pwsh -nologo'
vim.opt.shellcmdflag = '-command'
vim.opt.shellquote = '"'
vim.opt.shellxquote = ''

