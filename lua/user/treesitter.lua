local cmp_status_ok, treesitter = pcall(require, "nvim-treesitter.configs")
if not cmp_status_ok then
  return
end

treesitter.setup {
  ensure_installed = "maintained",
  sync_install = false,
  ignore_install = { "" },
  highlight = {
    enable = true,
    disable = { "" },
    additional_vim_regex_highlighting = true,
  },
  indent = {
    enable = true,
    disable = { "yaml" },
  },
  rainbow = {
    enable = true,
    disable = { "" },
    extended_mode = true,
    max_file_lines = nil,
    -- colors = { "red", "green", "yellow" },
    -- termcolors = {},
  }
}
