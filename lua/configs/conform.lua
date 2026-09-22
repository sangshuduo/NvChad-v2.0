-- ported from lua/custom/configs/null-ls.lua (null-ls is archived, v2.5 uses conform)
local options = {
  formatters_by_ft = {
    -- Lua
    lua = { "stylua" },

    -- webdev stuff: deno for ts/js cuz its very fast!
    javascript = { "deno_fmt" },
    javascriptreact = { "deno_fmt" },
    typescript = { "deno_fmt" },
    typescriptreact = { "deno_fmt" },

    -- prettier only on these filetypes
    html = { "prettier" },
    markdown = { "prettier" },
    css = { "prettier" },

    -- c/cpp
    c = { "clang_format" },
    cpp = { "clang_format" },
  },

  -- format_on_save = {
  --   -- These options will be passed to conform.format()
  --   timeout_ms = 500,
  --   lsp_fallback = true,
  -- },
}

return options
