require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

map({ "n", "v", "o" }, "<F7>", "<cmd>AsyncRun make -j80<cr>", { desc = "build run make -j80" })
map("n", "<leader>f", "<cmd>ClangFormat<cr>", { desc = "format clang-format buffer" })
