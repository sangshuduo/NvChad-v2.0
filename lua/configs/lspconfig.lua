require("nvchad.configs.lspconfig").defaults()

-- ported from lua/custom/configs/lspconfig.lua
-- note: "tsserver" was renamed to "ts_ls" upstream in nvim-lspconfig
local servers = { "html", "cssls", "ts_ls", "clangd" }
vim.lsp.enable(servers)

-- read :h vim.lsp.config for changing options of lsp servers
