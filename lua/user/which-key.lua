local cmp_status_ok, whichkey = pcall(require, "which-key")
if not cmp_status_ok then
  return
end

whichkey.register({
  b = {
    name = "+buffers",
    d = { ":BDelete this<CR>", "delete current" },
    o = { ":BufferLineCloseRight<CR>:BufferLineCloseLeft<CR>", "delete other"}
  },
  f = {
    name = "+telescope",
    b = { ":Telescope git_branches<CR>", "git branches" },
    B = { ":Telescope buffers<CR>", "buffers" },
    c = { ":Telescope commands<CR>", "commands" },
    f = { ":Telescope find_files<CR>", "find files" },
    h = { ":Telescope oldfiles<CR>", "file history" },
    s = { ":Telescope live_grep<CR>", "live grep" },
  },
  g = {
    name = "+git",
    b = { ":Git branch<CR>", "branch" },
    c = { ":Git commit<CR>", "commit" },
    C = { ":Git commit --amend<CR>", "amend" },
    -- g = { ":Git<CR>", "git" },
    g = { ":tab Git<CR>", "git" },
    l = { ":Git log<CR>", "log" },
    s = { ":Ghdiffsplit<CR>", "diff split" },
    p = { ":Git pull<CR>", "pull" },
    P = { ":Git push<CR>", "push" },
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
    h = {'<cmd>lua ToggleTerminal("htop", "horizontal")<CR>', "htop term"},
    H = {'<cmd>lua ToggleTerminal("htop", "float")<CR>', "htop float"},
    l = {'<cmd>lua ToggleTerminal("lua", "horizontal")<CR>', "lua term"},
    L = {'<cmd>lua ToggleTerminal("lua", "float")<CR>', "lua float"},
    n = {'<cmd>lua ToggleTerminal("node", "horizontal")<CR>', "node term"},
    N = {'<cmd>lua ToggleTerminal("node", "float")<CR>', "node float"},
    p = {'<cmd>lua ToggleTerminal("python3", "horizontal")<CR>', "python term"},
    P = {'<cmd>lua ToggleTerminal("python3", "float")<CR>', "python float"},
    s = {'<cmd>lua ToggleTerminal("scala", "horizontal")<CR>', "scala term"},
    S = {'<cmd>lua ToggleTerminal("scala", "float")<CR>', "scala float"},
    t = {'<cmd>lua ToggleTerminal("", "horizontal")<CR>', "normal term"},
    T = {'<cmd>lua ToggleTerminal("", "float")<CR>', "normal float"},
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
