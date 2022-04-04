-- local cmp_status_ok, startify = pcall(require, "vim-startify")
-- if not cmp_status_ok then
--   return
-- end

vim.g.startify_lists = {
  {
    type = "sessions",
    header = { "Sessions" }
  },
  {
    type = "files",
    header = {"Files"}
  }
}

vim.g.startify_session_before_save = {"silent! tabdo NvimTreeClose"}
