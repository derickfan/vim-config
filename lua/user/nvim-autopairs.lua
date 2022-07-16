local autopair_status_ok, autopair = pcall(require, "nvim-autopairs")
if not autopair_status_ok then
  return
end

autopair.setup{

}
