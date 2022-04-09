local metals_config = require("metals").bare_config()

metals_config.settings = {
  showImplicitArguments = true
}

vim.cmd [[augroup lsp]]
vim.cmd [[autocmd!]]
vim.cmd [[autocmd FileType scala setlocal omnifunc=v:lua.vim.lsp.omnifunc]]
vim.cmd [[au FileType java,scala,sbt lua require("metals").initialize_or_attach({metals_config})]]
vim.cmd [[augroup end]]


