local cmp_status_ok, telescope = pcall(require, "telescope")
if not cmp_status_ok then
  return
end

telescope.setup {
  pickers = {
    find_files = {
      -- theme = "ivy",
      layout_strategy = 'horizontal',
      layout_config = {
        height = 0.5,
        width = 0.5,
        -- prompt_position = 'top',
        anchor = 'top',
        preview_width = 0, --hide preview window
      },
    },
    live_grep = {
       -- theme = "dropdown"
    }
  }
}
