local close_buffers_status_ok, close_buffers = pcall(require, "close_buffers")
if not close_buffers_status_ok then
  return
end

close_buffers.setup {

}
