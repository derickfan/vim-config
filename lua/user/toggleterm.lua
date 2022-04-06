local cmp_status_ok, toggleterm = pcall(require, "toggleterm")
if not cmp_status_ok then
  return
end

toggleterm.setup {
  direction = "float",
  open_mapping = [[<C-t>]],
  float_opts = {
    border = "curved",
    height = 25,
  }
}

local Terminal = require("toggleterm.terminal").Terminal

local nodeterminal = Terminal:new({ cmd = "node", hidden = true })
function Nodeterm_toggle()
  nodeterminal:toggle()
end

local pythonterminal = Terminal:new({ cmd = "python3", hidden = true })
function Pythonterm_toggle()
  pythonterminal:toggle()
end

local scalaterminal = Terminal:new({ cmd = "scala", hidden = true })
function Scalaterm_toggle()
  scalaterminal:toggle()
end

