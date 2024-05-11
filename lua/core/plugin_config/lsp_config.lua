require('mason').setup()
require("mason-lspconfig").setup({
  ensure_installed = { "lua_ls", "clangd" }
})

local lspconfig = require('lspconfig')

lspconfig.clangd.setup({
    cmd = {"clangd", "--background-index"}
})
