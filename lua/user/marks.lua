local marks_status_ok, marks = pcall(require, "marks")
if not marks_status_ok then
  return
end

marks.setup {
  default_mappings = false,
  mappings = {
    set_next = "m,",
    toggle = "m;",
    next = "<C-n>",
    prev = "<C-p>",
    delete = "dm"
  }
}
