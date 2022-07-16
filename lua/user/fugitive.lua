local rhubarb_status_ok1, rhubarb = pcall(require, "vim-rhubarb")
if not rhubarb_status_ok1 then
  return
end

local fugitive_status_ok, fugitive = pcall(require, "vim-fugitive")
if not fugitive_status_ok then
  return
end

fugitive.setup {

}
