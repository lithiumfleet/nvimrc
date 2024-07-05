require("nvim-treesitter.configs").setup {
  ensure_installed = {"cpp", "python", "lua", "javascript", "rust", "c", "markdown"},
  sync_install = false,
  ignore_install = { "" },
  highlight = {
    enable = true,
    disable = { "" },
    additional_vim_regex_highlighting = true,

  },
  indent = { enable = true, disable = { "yaml" } },
  rainbow = {
    enable = true,
    extended_mode = true,
    max_file_lines = nil,
  }
}
