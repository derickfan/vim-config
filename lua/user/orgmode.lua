local orgmode_status_ok, orgmode = pcall(require, "orgmode")
if not orgmode_status_ok then
  return
end

orgmode.setup_ts_grammar()
