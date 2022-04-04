local cmp_status_ok, whichkey = pcall(require, "which-key")
if not cmp_status_ok then
  return
end

whichkey.register({
  f = {
    name = "+telescope",
    b = { ":Telescope git_branches<CR>", "git branches" },
    c = { ":Telescope commands<CR>", "commands" },
    f = { ":Telescope find_files<CR>", "find files" },
    s = { ":Telescope live_grep<CR>", "live grep" },
  },
  s = {
    name = "+session",
    c = { ":SClose<CR>", "close" },
    l = { ":SLoad<CR>", "load" },
    s = { ":SSave<CR>", "save" },
    S = { ":Startify<CR>", "startify" }
  },
  t = {
    name = "+terminal",
    n = { "<cmd>lua Nodeterm_toggle()<CR>", "node term" },
    p = { "<cmd>lua Pythonterm_toggle()<CR>", "python term"},
    s = { "<cmd>lua Scalaterm_toggle()<CR>", "scala term"}
  },
  r = {":luafile %<CR>", "source"}
},
{
  prefix = "<leader>",
})

