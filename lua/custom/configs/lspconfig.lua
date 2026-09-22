-- NOTE: this file is not wired up anywhere yet. To use it, add
--   require "custom.configs.lspconfig"
-- to lua/custom/init.lua (or an lspconfig plugin override in custom/plugins.lua).

-- registers the shared on_attach / capabilities via vim.lsp.config("*", ...)
require "plugins.configs.lspconfig"

-- servers that just need the defaults from nvim-lspconfig's lsp/ dir
-- (tsserver was renamed ts_ls upstream)
local servers = { "html", "cssls", "ts_ls", "clangd" }

vim.lsp.enable(servers)

-- per-server tweaks look like:
-- vim.lsp.config("pyright", { settings = { ... } })
-- vim.lsp.enable "pyright"
