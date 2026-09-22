# nvim config (NvChad v2.5)

Personal Neovim config, ported from the `v2.0` branch of this repo to NvChad's
v2.5 layout. Clone into `~/.config/nvim`.

In v2.5 NvChad split in two: `NvChad/NvChad` became a plugin, and the config
that lives in `~/.config/nvim` is based on `NvChad/starter`. This branch is that
config. The NvChad plugin itself is fetched by lazy.nvim, pinned to `v2.5` in
`init.lua` — there is no vendored copy here, so nothing shadows it on the
runtimepath.

## Layout

| file | holds |
| --- | --- |
| `init.lua` | lazy.nvim bootstrap, loads `NvChad/NvChad@v2.5` |
| `lua/chadrc.lua` | theme (`onedark` / `one_light` toggle), highlight hooks |
| `lua/highlights.lua` | `hl_override` / `hl_add` tables |
| `lua/options.lua` | `tabstop=4`, `noignorecase`, `whichwrap=`, `listchars` |
| `lua/mappings.lua` | `;`→`:`, `<F7>` AsyncRun, `<leader>f` ClangFormat |
| `lua/autocmds.lua` | NvChad defaults |
| `lua/plugins/init.lua` | NvChad spec overrides + the plugin set |
| `lua/configs/conform.lua` | formatters (replaces null-ls) |
| `lua/configs/lspconfig.lua` | `html`, `cssls`, `ts_ls`, `clangd` |
| `lua/configs/lazy.lua` | lazy.nvim options |

## Ported from v2.0

`lua/custom/` no longer exists in v2.5; its contents were redistributed into the
files above. Two v2.0 edits were deliberately **not** carried over, since they
were workarounds for modules missing from `NvChad/ui` at the time rather than
preferences:

- `lua/plugins/configs/cmp.lua` — `require "nvchad.icons.lspkind"` commented out
- `lua/plugins/configs/lspconfig.lua` — `require "nvchad.lsp"` commented out

`pack/kite/` was dropped: Kite was discontinued in late 2022.

## Known rough edges

- `simrat39/rust-tools.nvim` is archived (2024-01) and calls the deprecated
  `require("lspconfig")` framework, which emits a warning on startup and breaks
  at nvim-lspconfig v3.0.0. `mrcjkb/rustaceanvim` is the successor.
- `simrat39/inlay-hints.nvim` and `clangd_extensions`' `inlay_hints` predate
  Neovim's native `vim.lsp.inlay_hint`.
- `neoclide/coc.nvim` is commented out in `lua/plugins/init.lua` — it is a
  complete LSP/completion stack and conflicts with NvChad's nvim-cmp setup.
- `vim.g.gpt_commit_key` in `lua/plugins/init.lua` is still the `"your key"`
  placeholder carried over from v2.0.
