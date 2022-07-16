-- vim.api.nvim_create_autocmd({ "CursorMoved", "BufWinEnter", "BufFilePost" }, {
--   callback = function()
--     -- local value = require("user.winbar").filename()
--     -- print(value)
--     -- vim.opt_local.winbar = value
--     vim.opt_local.winbar = "HELLO"
--   end
-- })

-- vim.api.nvim_create_autocmd({ "BufWinEnter", "BufFilePost" }, {
--   callback = function()
--     local winbar_filetype_exclude = {
--       "help",
--       "startify",
--       "dashboard",
--       "packer",
--       "neogitstatus",
--       "NvimTree",
--       "Trouble",
--       "alpha",
--       "lir",
--       "Outline",
--       "spectre_panel",
--       "toggleterm",
--       "telescope",
--     }
--
--     if vim.tbl_contains(winbar_filetype_exclude, vim.bo.filetype) then
--       vim.opt_local.winbar = nil
--       return
--     end
--
--     -- local value = require("user.winbar").gps()
--     --
--     -- if value == nil then
--     local value = require("user.winbar2").filename()
--     -- end
--     print(value)
--     vim.opt_local.winbar = value
--   end,
-- })

vim.api.nvim_create_autocmd({ "CursorMoved", "BufWinEnter", "BufFilePost", "InsertEnter", "BufWritePost" }, {
  callback = function()
    require("user.winbar").get_winbar()
  end,
})
