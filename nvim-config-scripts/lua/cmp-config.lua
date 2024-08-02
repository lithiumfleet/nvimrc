-- Set up nvim-cmp for autocompletion
local cmp = require('cmp')

cmp.setup({
  snippet = {
    -- Use luasnip as the snippet engine
    expand = function(args)
      require('luasnip').lsp_expand(args.body)
    end,
  },
  window = {
    completion = cmp.config.window.bordered(),
    documentation = cmp.config.window.bordered(),
  },
  mapping = cmp.mapping.preset.insert({
    -- Key mappings for completion
    ['<Tab>'] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Insert }),
    ['<S-Tab>'] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Insert }),
    ['<C-j>'] = cmp.mapping.scroll_docs(2),
    ['<C-k>'] = cmp.mapping.scroll_docs(-2),
    ['<CR>'] = cmp.mapping.confirm({ select = true }),
  }),
  sources = cmp.config.sources(
    { {name='nvim_lsp'},{name='luasnip'} }, 
    { {name='buffer'} }
  ),

  -- For ghost completion (ide like)
  experimental = { ghost_text = true }
})

-- Use buffer source for `/` and `?` in command-line mode
cmp.setup.cmdline({ '/', '?' }, {
  mapping = cmp.mapping.preset.cmdline(),
  sources = {
    { name = 'buffer' }
  }
})

-- Use cmdline & path source for `:` in command-line mode
cmp.setup.cmdline(':', {
  mapping = cmp.mapping.preset.cmdline(),
  sources = cmp.config.sources({
    { name = 'path' }
  }, {
    { name = 'cmdline' }
  }),
  matching = { disallow_symbol_nonprefix_matching = false }
})

-- Set up lspconfig with nvim-cmp capabilities for specific languages
local lspconfig = require('lspconfig')
local capabilities = require('cmp_nvim_lsp').default_capabilities()

-- Configure LSP servers
lspconfig.pyright.setup({ capabilities = capabilities })
lspconfig.clangd.setup({ capabilities = capabilities })
lspconfig.rust_analyzer.setup({ capabilities = capabilities })
lspconfig.tsserver.setup({ capabilities = capabilities })

-- HTML Language Server
lspconfig.html.setup({
  capabilities = capabilities,
  cmd = {"vscode-html-language-server", "--stdio"},
  filetypes = {"html"},
  init_options = {
    configurationSection = {"html", "css", "javascript"},
    embeddedLanguages = {css = true, javascript = true}
  },
  settings = {},
  single_file_support = true
})

-- CSS Language Server
lspconfig.cssls.setup({
  capabilities = capabilities,
  cmd = {"vscode-css-language-server", "--stdio"},
  filetypes = {"css"},
  settings = {
    css = {
      validate = true
    }
  },
  single_file_support = true
})

-- JSON Language Server
lspconfig.jsonls.setup({
  capabilities = capabilities,
  cmd = {"vscode-json-language-server", "--stdio"},
  filetypes = {"json"},
  settings = {
    json = {
      validate = { enable = true }
    }
  },
  single_file_support = true
})
