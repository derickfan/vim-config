local bufferline_status_ok, bufferline = pcall(require, "bufferline")
if not bufferline_status_ok then
  return
end

bufferline.setup {
  options = {
    mode = "buffers",
    numbers = "ordinal",
    diagnostics = "nvim_lsp",
    max_name_length = 10,
    tab_size = 4,
    offsets = {
      {
        filetype = "NvimTree",
        text = "File Explorer",
        text_align = "center"
      }
    },
    always_show_bufferline = true
  }
}
