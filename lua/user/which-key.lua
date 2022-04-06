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
    d = { ":SDelete<CR>", "delete" },
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
  r = {":luafile %<CR>", "source"},
  w = {":w<CR>", "save"},
},
{
  prefix = "<leader>",
})

whichkey.setup {
  window = {
    border = "none", -- none, single, double, shadow
    position = "bottom", -- bottom, top
    margin = { 1, 0, 1, 0 }, -- extra window margin [top, right, bottom, left]
    padding = { 2, 2, 2, 2 }, -- extra window padding [top, right, bottom, left]
    winblend = 0
  },
  layout = {
    height = { min = 4, max = 25 }, -- min and max height of the columns
    width = { min = 20, max = 50 }, -- min and max width of the columns
    spacing = 3, -- spacing between columns
    align = "center", -- align columns left, center or right
  },
  ignore_missing = true,
}
