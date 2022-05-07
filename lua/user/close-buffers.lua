local cmp_status_ok, close_buffers = pcall(require, "close_buffers")
if not cmp_status_ok then
  return
end

close_buffers.setup {

}
