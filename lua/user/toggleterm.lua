local toggleterm_status_ok, toggleterm = pcall(require, "toggleterm")
if not toggleterm_status_ok then
  return
end

toggleterm.setup {
  direction = "float",
  open_mapping = [[<C-t>]],
  float_opts = {
    border = "curved",
    -- height = 25,
  }
}

local Terminal = require("toggleterm.terminal").Terminal

local terminals = {}
function ToggleTerminal(cmd, direction)
  if terminals[cmd] == nil then
    terminals[cmd] = Terminal:new({
      cmd = cmd ~= "" and cmd or nil,
      hidden = false,
      direction = direction,
      on_exit = function ()
        terminals[cmd] = nil
      end
    })
  end
  terminals[cmd]:toggle()
end

