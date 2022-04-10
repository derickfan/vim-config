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

local nodeterminal
function Nodeterm_toggle(direction)
  if nodeterminal == nil then
    nodeterminal = Terminal:new({
      cmd = "node",
      hidden = false,
      direction = direction,
      on_exit = function ()
        nodeterminal = nil
      end
    })
  end
  nodeterminal:toggle()
end

local pythonterminal
function Pythonterm_toggle(direction)
  if pythonterminal == nil then
    pythonterminal = Terminal:new({
      cmd = "python3",
      hidden = false,
      direction = direction,
      on_exit = function ()
        pythonterminal = nil
      end
    })
  end
  pythonterminal:toggle()
end

local scalaterminal
function Scalaterm_toggle(direction)
  if scalaterminal == nil then
    scalaterminal = Terminal:new({
      cmd = "scala",
      hidden = false,
      direction = direction,
      on_exit = function ()
        scalaterminal = nil
      end
    })
  end
  scalaterminal:toggle()
end

