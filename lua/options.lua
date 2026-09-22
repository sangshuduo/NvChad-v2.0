require "nvchad.options"

-- add yours here!

local o = vim.o

o.ignorecase = false
o.number = true
o.whichwrap = ""
o.tabstop = 4
o.shiftwidth = 4

-- show whitespace: tab:→\ ,trail:␣,extends:…,eol:⏎
vim.opt.list = true
vim.opt.listchars:append "eol:⏎"
vim.opt.listchars:append "space: "
vim.opt.listchars:append "trail:␣"
vim.opt.listchars:append "extends:…"
vim.opt.listchars:append "nbsp:␣"
vim.opt.listchars:append "tab:>-"
