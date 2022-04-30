local cmp_status_ok, gitsigns = pcall(require, "gitsigns")
if not cmp_status_ok then
  return
end

gitsigns.setup {
  current_line_blame = true,
  current_line_blame_opts = {
    virt_text_pos = 'eol',
    delay = 500
  }
}
