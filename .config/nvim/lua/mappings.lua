require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("i", "<C-f>", 'copilot#Accept("\\<CR>")', {
  expr = true,
  replace_keycodes = false,
})
vim.g.copilot_no_tab_map = true

map("n", "<C-h>", "<cmd> TmuxNavigateLeft <cr>", { desc = "window left" })
map("n", "<C-j>", "<cmd> TmuxNavigateDown <cr>", { desc = "window down" })
map("n", "<C-k>", "<cmd> TmuxNavigateUp <cr>", { desc = "window up" })
map("n", "<C-l>", "<cmd> TmuxNavigateRight <cr>", { desc = "window right" })

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
