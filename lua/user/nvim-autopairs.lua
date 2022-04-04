local cmp_status_ok, autopair = pcall(require, "nvim-autopairs")
if not cmp_status_ok then
  return
end

autopair.setup{

}
