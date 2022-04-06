local cmp_status_ok, comment = pcall(require, "nvim_comment")
if not cmp_status_ok then
  return
end

comment.setup()
