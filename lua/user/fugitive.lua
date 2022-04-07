local cmp_status_ok1, rhubarb = pcall(require, "vim-rhubarb")
if not cmp_status_ok1 then
  return
end

local cmp_status_ok, fugitive = pcall(require, "vim-fugitive")
if not cmp_status_ok then
  return
end

fugitive.setup {

}
