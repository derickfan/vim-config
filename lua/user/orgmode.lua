local cmp_status_ok, orgmode = pcall(require, "orgmode")
if not cmp_status_ok then
  return
end

orgmode.setup_ts_grammar()
